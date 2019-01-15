// 1. Obter uma listagem dos utilizadores que frequentaram uma atração num intervalo de tempo;
MATCH (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
WHERE a.id = 1 AND localdatetime(r.data_entrada_fila) >= localdatetime('2017-06-15T09:5:20') AND localdatetime(r.data_entrada_fila) <= localdatetime('2017-06-15T18:5:00')
RETURN u.id AS Id, u.nome AS Nome
ORDER BY u.id

// 2. Obter o tempo médio de espera
// dos utilizadores de uma atração num intervalo de tempo;
MATCH q1 = (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
WHERE a.id = 1 AND localdatetime(r.data_entrada_fila) >= localdatetime('2017-06-15T09:05:20') AND localdatetime(r.data_entrada_fila) <= localdatetime('2017-06-15T18:05:00')
WITH duration.between(localdatetime(r.data_entrada_fila),localdatetime(r.data_entrada_atracao)) AS diff
WITH AVG(diff) AS time
RETURN time.minutesOfHour + ':' + time.secondsOfMinute AS TempoMedio;

// 3. Obter o número de utilizadores em fila numa atração
// num intervalo de tempo;
MATCH q1 = (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
WHERE a.id = 1 AND localdatetime(r.data_entrada_fila) >= localdatetime('2017-06-15T10:05:20') AND localdatetime(r.data_entrada_atracao) = null
RETURN COUNT(*) AS PessoasEmFila;

// 4. Obter uma listagem de utilizadores de uma categoria;
MATCH (u:Utilizador)-[r:PERTENCE_A]->(c:Categoria)
WHERE c.id = 2 // inserir aqui ID pretendido
RETURN u.id AS IdVisitante, u.nome AS NomeVisitante;

// 5.	Obter uma listagem das atrações mais visitadas por utilizadores de uma categoria;
MATCH (a:Atracao)-[r:E_VISITADA_POR]-(u:Utilizador)-[p:PERTENCE_A]-(c:Categoria)
WHERE c.id = 2
RETURN a.designacao AS Atracao, COUNT(u) AS Visitas
ORDER BY COUNT(u) DESC

// 6.	Obter a hora de entrada média dos utilizadores de uma categoria;
MATCH (u:Utilizador)-[r:PERTENCE_A]->(c:Categoria)
WHERE c.id = 2 // inserir aqui ID pretendido
with localdatetime(u.hora_entrada_parque) AS entrada
with AVG(duration({hours: entrada.hour, minutes: entrada.minute, seconds: entrada.second})) AS media
RETURN media.hours + ':' + media.minutesOfHour + ':' + media.secondsOfMinute AS HoraMediaEntrada;

// 7. Obter o número total de utilizadores que visitaram o parque num intervalo de tempo em dias (inclusive);

MATCH (u:Utilizador)
WITH localdatetime(u.hora_entrada_parque) AS entrada
WHERE entrada >= localdatetime('2017-06-15T09:00:00') AND entrada <= localdatetime('2017-06-15T19:00:00')
RETURN COUNT(entrada) AS NumUtilizadores;

// 8.	Obter o número total de utilizadores que visitaram o parque por categoria num intervalo de tempo em dias (inclusive);
MATCH (u:Utilizador)-[:PERTENCE_A]->(c:Categoria)
WHERE c.id = 1
with localdatetime(u.hora_entrada_parque) AS entrada
WHERE entrada >= localdatetime('2017-06-15T09:00:00') AND entrada <= localdatetime('2017-06-15T19:00:00')
RETURN COUNT(entrada) AS NumUtilizadores;

//  9. Obter o top n utilizadores que mais frequentaram as atrações num dia;
MATCH (u:Utilizador)
WHERE localdatetime(u.hora_entrada_parque).year = 2017 AND localdatetime(u.hora_entrada_parque).month = 6 AND localdatetime(u.hora_entrada_parque).day = 15
RETURN u.nome AS Nome, u.n_atracoes_visitadas AS NAtracoesVisitadas
ORDER BY u.n_atracoes_visitadas DESC
LIMIT 5;

// 10. Obter as atrações mais visitadas num determinado intervalo de tempo;
MATCH (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
WHERE localdatetime(r.data_entrada_atracao) >= localdatetime('2017-06-15T09:00:00') AND localdatetime(r.data_entrada_atracao) <= localdatetime('2017-06-17T23:00:00')
RETURN a.designacao AS NomeAtracao, COUNT(a.id) AS NumVisitas
ORDER BY NumVisitas DESC;

// 11.	Obter uma listagem de todos os utilizadores que frequentaram o Parque, por ordem decrescente de tempo permanecido no Parque;
MATCH (u:Utilizador)
RETURN u
ORDER BY duration.between(localdatetime(u.hora_saida_parque),localdatetime(u.hora_entrada_parque)) ASC

// 12.	Obter a designação da categoria do maior número de visitantes da atração monitorizada por um dado funcionário, num dado turno.
MATCH (f:Funcionario)-[t:TRABALHA_EM]-(a:Atracao)-[r:E_VISITADA_POR]-(u:Utilizador)-[p:PERTENCE_A]-(c:Categoria)
WHERE f.id = 1
AND localdatetime(r.data_entrada_fila) >= localdatetime(t.data_de_inicio)
AND localdatetime(r.data_entrada_fila) <= localdatetime(t.data_de_fim)
AND localdatetime(t.data_de_inicio) <= localdatetime("2017-06-15T18:00:00")
AND localdatetime(t.data_de_fim) >= localdatetime("2017-06-15T09:00:00")
RETURN c.designacao AS Categoria, COUNT(c.id) AS NumVisitas
ORDER BY COUNT(c.id) DESC
