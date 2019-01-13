

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
