-- 1. Obter uma listagem dos utilizadores 
-- que frequentaram uma atração num intervalo de tempo;
USE ParqueAquatico;

DELIMITER //

DROP PROCEDURE IF EXISTS whoVisited //

CREATE PROCEDURE whoVisited(id INT, fromWhen DATETIME, toWhen DATETIME)
BEGIN  
	SELECT distinct U.Id "Id do Visitante", U.Nome as "Nome do Visitante" from Utilizador as U
	INNER JOIN e_visitada_por as V on U.Id = V.Utilizador_Id
	WHERE (V.Data_entrada_fila between fromWhen and toWhen) 
		and id = V.Atracao_Id;
END //


-- 2. Obter o tempo médio de espera 
-- dos utilizadores de uma atração num intervalo de tempo;
DELIMITER //

DROP FUNCTION IF EXISTS averageWait //

CREATE FUNCTION averageWait(id INT, fromWhen DATETIME, toWhen DATETIME)
	RETURNS TIME
    DETERMINISTIC
BEGIN
	DECLARE result TIME(0);
	SELECT sec_to_time(avg(time_to_sec(timediff(V.Data_entrada_atracao,V.Data_entrada_fila)))) as "Média" from e_visitada_por as V
	WHERE (V.Data_entrada_fila between fromWhen and toWhen) 
		and id = V.Atracao_Id
        and (V.Data_entrada_atracao between fromWhen and toWhen)
        and (V.Data_entrada_atracao is not null)
        into result;
	RETURN result;
END //

-- 3. Obter o número de utilizadores em fila numa atração 
-- num intervalo de tempo;
DELIMITER //

DROP FUNCTION IF EXISTS countWaiting //

CREATE FUNCTION countWaiting(idAtracao INT, whenWait DATETIME)
	RETURNS INT
    DETERMINISTIC
BEGIN
	DECLARE result INT;
	SELECT count(V.Utilizador_Id) as "Nº de utilizadores em espera" from e_visitada_por as V
    where (V.data_entrada_atracao = null)
    and idAtracao = V.Atracao_Id
    and (V.Data_entrada_fila <= whenWait) into result;
    RETURN result;
END //


-- 4 Obter uma listagem de utilizadores de uma categoria;
DELIMITER //

DROP PROCEDURE IF EXISTS UtilizadorCat //

CREATE PROCEDURE UtilizadorCat(id INT)
BEGIN  
	SELECT distinct U.Id "Id do Visitante", U.Nome "Nome do Visitante" from Utilizador as U
	WHERE (id = U.Categoria_Id);
END //



-- 5.	Obter uma listagem das atrações mais visitadas por utilizadores de uma categoria;

DELIMITER $$
CREATE PROCEDURE AtracoesMaisVisitadasCat (id Int)
BEGIN
	SELECT Atracao.Designacao, COUNT(e_visitada_por.Utilizador_Id) as "Nº de visitas" FROM Utilizador 
	INNER JOIN  e_visitada_por ON e_visitada_por.Utilizador_Id=Utilizador.Id
    INNER JOIN Atracao ON Atracao.Id=e_visitada_por.Atracao_Id
	WHERE (Utilizador.Categoria_Id=id)
	GROUP BY (Atracao.Id)
    ORDER BY COUNT(e_visitada_por.Utilizador_Id) DESC;
END
$$

call AtracoesMaisVisitadasCat (1);

drop Procedure AtracoesMaisVisitadasCat;

