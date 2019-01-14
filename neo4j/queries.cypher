// 1. Obter uma listagem dos utilizadores que frequentaram uma atração num intervalo de tempo;
match (a:Atracao)-[r:E_VISITADA_POR]->(u:Utilizador)
where a.id = 1 and localdatetime(r.data_entrada_fila) >= localdatetime('2017-06-15T09:5:20')and localdatetime(r.data_entrada_fila) <= localdatetime('2017-06-15T18:5:00')
return u.id as Id, u.nome as Nome
order by u.id

// 4. Obter uma listagem de utilizadores de uma categoria;
match (u:Utilizador)-[r:PERTENCE_A]->(c:Categoria)
where c.id = 2 // inserir aqui ID pretendido
return u.id as IdVisitante, u.nome as NomeVisitante;

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
