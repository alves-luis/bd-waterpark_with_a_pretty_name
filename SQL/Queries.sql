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

drop Procedure if exists AtracoesMaisVisitadasCat $$

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


-- 6.	Obter a hora de entrada média dos utilizadores de uma categoria;

DELIMITER //

DROP FUNCTION IF EXISTS averageEntry//

CREATE FUNCTION averageEntry(id INT)
	RETURNS TIME
    DETERMINISTIC
BEGIN
	DECLARE result TIME(0);
	SELECT sec_to_time(avg(time_to_sec(U.Hora_Entrada_parque))) as "Média" from Utilizador as U
	WHERE U.Categoria_Id=id
	into result;
	RETURN result;
END //

-- 7. Obter o número total de utilizadores que visitaram o parque num intervalo de tempo em dias (inclusive);

DELIMITER //

DROP FUNCTION IF EXISTS NumUtilizadoresAtTime //

CREATE FUNCTION  NumUtilizadoresAtTime (inicio DATE, fim DATE)
	RETURNS INT
    DETERMINISTIC
BEGIN
	DECLARE result INT;
	SELECT count(U.Id) from Utilizador as U
	WHERE ((Date(U.Hora_entrada_parque) )BETWEEN inicio and fim) 
	into result;
	RETURN result;
END //


--  8.	Obter o número total de utilizadores que visitaram o parque por categoria num intervalo de tempo em dias (inclusive);

DELIMITER //

DROP FUNCTION IF EXISTS NumUtilizadoresAtTimeCat //

CREATE FUNCTION  NumUtilizadoresAtTimeCat (id INT, inicio DATE, fim DATE)
	RETURNS INT
    DETERMINISTIC
BEGIN
	DECLARE result INT;
	SELECT count(U.Id) from Utilizador as U
	WHERE ((Date(U.Hora_entrada_parque) )BETWEEN inicio and fim) AND (U.Categoria_Id= id)
	into result;
	RETURN result;
END //


-- 9.	Obter o top n utilizadores que mais frequentaram as atrações num dia;

DELIMITER //

DROP PROCEDURE IF EXISTS BestUsers //

CREATE PROCEDURE BestUsers (day DATE, limite INT)
BEGIN
	SELECT U.Nome as "Nome" , U.N_Atracoes_Visitadas as "Nº atrações visitadas" FROM Utilizador As U
    WHERE (Date(U.Hora_entrada_parque)=day)
    ORDER BY N_Atracoes_Visitadas DESC
    LIMIT limite;
END //


-- 10.	Obter as atrações mais visitadas num determinado intervalo de tempo;

DELIMITER //

DROP PROCEDURE IF EXISTS atractionsMostVisitedByTime //

CREATE PROCEDURE atractionsMostVisitedByTime (fromWhen DATETIME, toWhen DATETIME)
BEGIN 
	SELECT A.Designacao as "Nome da Atração", COUNT(A.Id) as "Nº de visitantes" FROM Atracao As A
    INNER JOIN e_visitada_por ON e_visitada_por.Atracao_Id= A.Id
    WHERE (e_visitada_por.Data_entrada_atracao IS NOT NULL) AND (e_visitada_por.Data_entrada_atracao BETWEEN fromWhen AND toWhen)
    GROUP BY (A.Id)
    ORDER BY COUNT(A.Id) DESC;
END //

-- 11.	Obter uma listagem de todos os utilizadores que frequentaram o Parque, por ordem decrescente de tempo permanecido no Parque;

DELIMITER //

DROP PROCEDURE IF EXISTS allUsersByTimeOnPark //
CREATE PROCEDURE allUsersByTimeOnPark ()
BEGIN
	SELECT U.Nome as "Nome do Utilizador", timediff(U.Hora_saida_parque,U.Hora_entrada_parque) as "Tempo que permaneceu no Parque" FROM Utilizador AS U
    WHERE U.Hora_saida_parque IS NOT NULL
    ORDER BY timediff(U.Hora_saida_parque,U.Hora_entrada_parque) DESC;
END //


-- 12.	Obter a designação da categoria do maior número de visitantes da atração monitorizada por um dado funcionário, num dado turno.


DELIMITER //

DROP PROCEDURE IF EXISTS categoryMostVisitedOnShift //
CREATE PROCEDURE categoryMostVisitedOnShift (funcionario INT, shift DATETIME)
BEGIN
	SELECT Categoria.Designacao as "Nome da Categoria ", COUNT(Categoria.Designacao) as "Nº visitantes da categoria"  FROM trabalha_em AS T
    INNER JOIN Atracao ON Atracao.Id=T.Atracao_Id
    INNER JOIN e_visitada_por ON  e_visitada_por.Atracao_Id=Atracao.Id
    INNER JOIN Utilizador ON Utilizador.Id= e_visitada_por.Utilizador_Id
    INNER JOIN Categoria On Categoria.Id = Utilizador.Categoria_Id
    WHERE (T.Data_de_Fim IS NOT NULL)
    AND (T.Funcionário_Id=funcionario)
    AND (shift BETWEEN T.Data_de_Inicio AND T.Data_de_Fim)
    AND (e_visitada_por.Data_entrada_atracao IS NOT NULL)
    AND (e_visitada_por.Data_entrada_atracao BETWEEN T.Data_de_Inicio AND T.Data_de_Fim)
    GROUP BY (Categoria.Id)
    ORDER BY COUNT(Categoria.Designacao) DESC;
    END //
    
    
    

