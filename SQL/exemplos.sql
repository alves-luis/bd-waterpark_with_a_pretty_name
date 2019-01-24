-- Query 1
call whoVisited(1,'2017-06-15 09:5:20','2017-06-15 18:5:00');
-- Query 2
select averageWait(1,'2017-06-15 09:05:20','2017-06-15 18:05:00');
-- Query 3
select countWaiting(6,'2017-06-15 10:10:23');
-- Query 4
call UtilizadorCat(2);
-- Query 5
call AtracoesMaisVisitadasCat(2);
-- Query 6
select averageEntry(2);
-- Query 7
select NumUtilizadoresAtTime('2017-06-15 09:00:00','2017-06-15 19:00:00');
-- Query 8
select NumUtilizadoresAtTimeCat(1,'2017-06-15 09:00:00','2017-06-15 19:00:00');
-- Query 9
call BestUsers('2017-06-15',5);
-- Query 10
call atractionsMostVisitedByTime('2017-06-15 09:00:00','2017-06-17 23:00:00');
-- Query 11
call allUsersByTimeOnPark();
-- Query 12
call categoryMostVisitedOnShift(1,'2017-06-15 10:00:00');
