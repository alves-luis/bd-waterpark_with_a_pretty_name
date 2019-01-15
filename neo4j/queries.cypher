// 1. Obter uma listagem dos utilizadores que frequentaram uma atração num intervalo de tempo;
match (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
where a.id = 1 and localdatetime(r.data_entrada_fila) >= localdatetime('2017-06-15T09:5:20')and localdatetime(r.data_entrada_fila) <= localdatetime('2017-06-15T18:5:00')
return u.id as Id, u.nome as Nome
order by u.id

// 2. Obter o tempo médio de espera
// dos utilizadores de uma atração num intervalo de tempo;
match q1 = (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
where a.id = 1 and localdatetime(r.data_entrada_fila) >= localdatetime('2017-06-15T09:05:20') and localdatetime(r.data_entrada_fila) <= localdatetime('2017-06-15T18:05:00')
with duration.between(localdatetime(r.data_entrada_fila),localdatetime(r.data_entrada_atracao)) as diff
with avg(diff) as time
return time.minutesOfHour + ':' + time.secondsOfMinute as TempoMedio;

// 3. Obter o número de utilizadores em fila numa atração
// num intervalo de tempo;
match q1 = (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
where a.id = 1 and localdatetime(r.data_entrada_fila) >= localdatetime('2017-06-15T10:05:20') and localdatetime(r.data_entrada_atracao) = null
return count(*);

// 4. Obter uma listagem de utilizadores de uma categoria;
match (u:Utilizador)-[r:PERTENCE_A]->(c:Categoria)
where c.id = 2 // inserir aqui ID pretendido
return u.id as IdVisitante, u.nome as NomeVisitante;

// 5.	Obter uma listagem das atrações mais visitadas por utilizadores de uma categoria;
match (a:Atracao)-[r:E_VISITADA_POR]-(u:Utilizador)-[p:PERTENCE_A]-(c:Categoria)
where c.id = 2
return DISTINCT a.designacao as Atracao, count(u)
order by count(u) DESC

// 6.	Obter a hora de entrada média dos utilizadores de uma categoria;

match (u:Utilizador)-[r:PERTENCE_A]->(c:Categoria)
where c.id = 2 // inserir aqui ID pretendido
with localdatetime(u.hora_entrada_parque) as entrada
with avg(duration({hours: entrada.hour, minutes: entrada.minute, seconds: entrada.second})) as media
return media.hours + ':' + media.minutesOfHour + ':' + media.secondsOfMinute as HoraMediaEntrada;

// 7. Obter o número total de utilizadores que visitaram o parque num intervalo de tempo em dias (inclusive);

match (u:Utilizador)
with localdatetime(u.hora_entrada_parque) as entrada
where entrada >= localdatetime('2017-06-15T09:00:00') and entrada <= localdatetime('2017-06-15T19:00:00')
return count(entrada) as NumUtilizadores;

// 8.	Obter o número total de utilizadores que visitaram o parque por categoria num intervalo de tempo em dias (inclusive);
match (u:Utilizador)-[:PERTENCE_A]->(c:Categoria)
where c.id = 1
with localdatetime(u.hora_entrada_parque) as entrada
where entrada >= localdatetime('2017-06-15T09:00:00') and entrada <= localdatetime('2017-06-15T19:00:00')
return count(entrada) as NumUtilizadores

//  9. Obter o top n utilizadores que mais frequentaram as atrações num dia;
match (u:Utilizador)
where localdatetime(u.hora_entrada_parque).year = 2017 and localdatetime(u.hora_entrada_parque).month = 6 and localdatetime(u.hora_entrada_parque).day = 15
return u.nome as Nome, u.n_atracoes_visitadas as NAtracoesVisitadas
order by u.n_atracoes_visitadas desc
limit 5;

// 10. Obter as atrações mais visitadas num determinado intervalo de tempo;
match (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
where localdatetime(r.data_entrada_atracao) >= localdatetime('2017-06-15T09:00:00') and localdatetime(r.data_entrada_atracao) <= localdatetime('2017-06-17T23:00:00')
return a.designacao as NomeAtracao, count(a.id) as NumVisitas
order by NumVisitas desc

// 11.	Obter uma listagem de todos os utilizadores que frequentaram o Parque, por ordem decrescente de tempo permanecido no Parque;
MATCH (u:Utilizador)
RETURN u
ORDER BY duration.between(localdatetime(u.hora_saida_parque),localdatetime(u.hora_entrada_parque)) ASC

// 12.	Obter a designação da categoria do maior número de visitantes da atração monitorizada por um dado funcionário, num dado turno.
match (f:Funcionario)-[t:TRABALHA_EM]-(a:Atracao)-[r:E_VISITADA_POR]-(u:Utilizador)-[p:PERTENCE_A]-(c:Categoria)
where f.id = 1
and localdatetime(r.data_entrada_fila) >= localdatetime(t.data_de_inicio)
and localdatetime(r.data_entrada_fila) <= localdatetime(t.data_de_fim)
and localdatetime(t.data_de_inicio) <= localdatetime("2017-06-15T10:00:00")
and localdatetime(t.data_de_fim) >= localdatetime("2017-06-15T10:00:00")
return DISTINCT c.designacao, count(c.id)
order by count(c.id) DESC
