-- Base de Dados do Trabalho
use parqueaquatico;

-- Povoamento da Tabela atracao
insert into Atracao (Id, Designacao, Zona, Capacidade, Duracao, Altura_Minima) values
	(1,"Big Show","Cabeça",32,"00:3:10",170);

insert into Utilizador (Id, Nome, Nacionalidade, Hora_entrada_parque, Hora_saida_parque, Categoria_Id, N_Atracoes_Visitadas) values
	(1,"Joaquim da Rita", "Português", "2017-06-15 09:00:00",null,1,1);
    
insert into Categoria (Id, Designacao, Preco, Idade_inferior, Idade_superior) values
	(1,"Normal",23.5,11,64);
    
insert into e_visitada_por (Data_entrada_fila, Data_entrada_atracao, Atracao_Id, Utilizador_Id) values
						("2017-06-15 09:34:21", "2017-06-15 09:36:21",1,1),
                        ("2017-06-15 09:38:21","2017-06-15 09:42:21",1,1);