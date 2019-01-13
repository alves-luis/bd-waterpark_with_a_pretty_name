
SELECT Id, Nome, Nacionalidade, DATE_FORMAT(Hora_entrada_parque, '%Y-%m-%dT%T') AS Hora_entrada_parque, DATE_FORMAT(Hora_saida_parque, '%Y-%m-%dT%T') AS Hora_saida_parque, Categoria_Id, N_Atracoes_Visitadas
FROM Utilizador;

SELECT * FROM Categoria;

SELECT * FROM Atracao;

SELECT DATE_FORMAT( Data_entrada_fila, '%Y-%m-%dT%T') AS Data_entrada_fila, DATE_FORMAT(Data_entrada_atracao, '%Y-%m-%dT%T') AS Data_entrada_atracao, Atracao_Id, Utilizador_Id
FROM e_visitada_por;

SELECT DATE_FORMAT(Data_de_Inicio, '%Y-%m-%dT%T') AS Data_de_Inicio, DATE_FORMAT(Data_de_Fim, '%Y-%m-%dT%T') AS Data_de_Fim, Funcionário_Id, Atracao_Id
FROM trabalha_em;