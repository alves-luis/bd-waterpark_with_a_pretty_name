USE ParqueAquatico;

-- Procedure para addicionar um novo utilizador quando este entra no parque.

DELIMITER //
 
CREATE PROCEDURE `InsertUser` (in UserNome VARCHAR(64), UserNacionalidade VARCHAR(32), UserCategoria_id INT)
	begin
		INSERT INTO Utilizador (Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (@id,UserNome,UserNacionalidade,NOW(), NULL,UserCategoria_id,0);
	end
 //

-- Procedure para addicionar um novo funcionario quando este começa a trabalhar no parque.

DELIMITER //
 
CREATE PROCEDURE `InsertFuncionario` (in FunNome VARCHAR(64),FunSalario DECIMAL(5,2))
	begin
		insert into Funcionário (Nome, Salario) values (FunNome, FunSalario);
	end
 //
 
 -- Procedure para addicionar uma nova atração do parque.

 
 DELIMITER //
 
CREATE PROCEDURE `InsertAtracao` (in ATDesignacao VARCHAR(32),ATZona VARCHAR(32), ATCapacidade INT , ATDuracao TIME, ATAltura INT)
	begin
		SET @id = (select(max(Id)+1) from Atracao);
		insert into Atracao (Id, Designacao, Zona, Capacidade, Duracao, Altura_Minima) values (@id,ATDesignacao,ATZona,ATCapacidade,ATDuracao,ATAltura);
	end
 //
 
  -- Procedure para addicionar a data de saida do parque de um utilizador.

 
 DELIMITER //
 
 CREATE PROCEDURE `SaidaUser` (in UID INT)
	begin
		UPDATE `Utilizador`
		SET Hora_saida_parque = NOW()
			WHERE ID = UID;
	end
 //
 
 
 -- Procedure para addicionar um turno que acabou de occurer.
 
DELIMITER //
 
CREATE PROCEDURE `InsertTurno` (in DataBegin DATETIME, DataEnd DATETIME, FunID INT, AtracaoID INT )
	begin
		insert into trabalha_em (Data_de_Inicio, Data_de_Fim, Funcionário_Id, Atracao_Id) values (DataBegin, DataEnd, FunID, AtracaoID);
	end
 // 
 
 
 -- Procedure para registar que um utlizador disfrutou uma atração.
 -- Pelo que percebi dos Triggers, o trigger para esta querry já esta feito.
 
 
DELIMITER //
 
CREATE PROCEDURE `VisitaAtracao` (in UtilizadorID INT, AtracaoID INT )
	begin
		insert into e_visitada_por (Data_entrada_fila, Data_entrada_atracao, Atracao_Id, Utilizador_Id) values (NOW(), NULL ,AtracaoID,UtilizadorID);
	end
 // 
 
 
 -- Zona de teste 
 --
 --
 --
CALL VisitaAtracao(203,2);
CALL InsertTurno("2007-05-08 12:35:29","2007-05-08 12:35:29",10,3);
CALL SaidaUser(204);
CALL InsertAtracao("Big Shaq","Tronco",64,"00:1:09",162);
CALL InsertFuncionario("Digz", "999");
CALL InsertUser("Digz", "Tuga", 1);
CALL InsertUser("Digz", "Tuga", 1);
--
--
-- Zona para verificar os testes
--
select * from e_visitada_por;
select * from trabalha_em;
select * from Atracao;
select * from Funcionário;
select * from Utilizador;

