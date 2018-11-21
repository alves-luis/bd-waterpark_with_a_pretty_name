-- Base de Dados do Trabalho
use ParqueAquatico;

-- Povoamento da Tabela Funcionarios
insert into Funcionário (Id, Nome, Salario) values (1, 'Livvy Vink', 757.59);
insert into Funcionário (Id, Nome, Salario) values (2, 'Goddard Soutar', 726.15);
insert into Funcionário (Id, Nome, Salario) values (3, 'Durand Bellanger', 836.47);
insert into Funcionário (Id, Nome, Salario) values (4, 'Abbot Grafton', 955.72);
insert into Funcionário (Id, Nome, Salario) values (5, 'Carmella Alen', 792.27);
insert into Funcionário (Id, Nome, Salario) values (6, 'Lotte Fromont', 659.76);
insert into Funcionário (Id, Nome, Salario) values (7, 'Saul Rown', 702.25);
insert into Funcionário (Id, Nome, Salario) values (8, 'Lyndsie Lightbody', 822.25);
insert into Funcionário (Id, Nome, Salario) values (9, 'Wernher Wallbridge', 652.53);
insert into Funcionário (Id, Nome, Salario) values (10, 'Caressa Banbrigge', 876.8);
insert into Funcionário (Id, Nome, Salario) values (11, 'Beau Klemz', 718.53);
insert into Funcionário (Id, Nome, Salario) values (12, 'Emmalee Littrick', 679.75);
insert into Funcionário (Id, Nome, Salario) values (13, 'Madalyn Ranfield', 708.96);
insert into Funcionário (Id, Nome, Salario) values (14, 'Giorgio Daviddi', 934.04);
insert into Funcionário (Id, Nome, Salario) values (15, 'Aubrette Dowse', 979.89);
insert into Funcionário (Id, Nome, Salario) values (16, 'Phebe Galpin', 897.19);
insert into Funcionário (Id, Nome, Salario) values (17, 'Danni Bains', 959.1);
insert into Funcionário (Id, Nome, Salario) values (18, 'Bernard Jachtym', 897.07);
insert into Funcionário (Id, Nome, Salario) values (19, 'Willard Enrigo', 935.03);
insert into Funcionário (Id, Nome, Salario) values (20, 'Derk Reggler', 992.73);
insert into Funcionário (Id, Nome, Salario) values (21, 'Stinky Polleye', 816.32);
insert into Funcionário (Id, Nome, Salario) values (22, 'Darin Wolpert', 802.12);
insert into Funcionário (Id, Nome, Salario) values (23, 'Phylis Gourlay', 679.82);
insert into Funcionário (Id, Nome, Salario) values (24, 'Tedra Grichukhanov', 752.29);
insert into Funcionário (Id, Nome, Salario) values (25, 'Coop Tyson', 857.23);
insert into Funcionário (Id, Nome, Salario) values (26, 'Giovanni Sutter', 712.06);
insert into Funcionário (Id, Nome, Salario) values (27, 'Gratia Lapsley', 809.36);
insert into Funcionário (Id, Nome, Salario) values (28, 'Kerry Easterbrook', 798.57);
insert into Funcionário (Id, Nome, Salario) values (29, 'Alisun Colloby', 859.3);
insert into Funcionário (Id, Nome, Salario) values (30, 'Lila Smithies', 899.93);
insert into Funcionário (Id, Nome, Salario) values (31, 'Ransell Lagde', 801.26);
insert into Funcionário (Id, Nome, Salario) values (32, 'Myranda Pettman', 765.36);
insert into Funcionário (Id, Nome, Salario) values (33, 'Amerigo Adrien', 998.07);
insert into Funcionário (Id, Nome, Salario) values (34, 'Frazier Wheelan', 727.02);
insert into Funcionário (Id, Nome, Salario) values (35, 'Rubia Hablot', 865.2);
insert into Funcionário (Id, Nome, Salario) values (36, 'Crissy Joskowitz', 769.16);
insert into Funcionário (Id, Nome, Salario) values (37, 'Star Ellerington', 810.14);
insert into Funcionário (Id, Nome, Salario) values (38, 'Keane Orehead', 789.96);
insert into Funcionário (Id, Nome, Salario) values (39, 'Noel Brotheridge', 764.56);
insert into Funcionário (Id, Nome, Salario) values (40, 'Christoffer Rentelll', 831.58);

-- Povoamento da Tabela atracao
insert into Atracao (Id, Designacao, Zona, Capacidade, Duracao, Altura_Minima) values
	(1,"Big Show","Cabeça",32,"00:3:10",170);

-- Povoamento da Tabela Categoria
insert into Categoria (Id, Designacao, Preco, Idade_inferior, Idade_superior) values
	(1,"Normal",27,11,64),
    (2,"Júnior",20,5,10),
    (3,"Infantil",0,0,4),
    (4,"Sénior",20,64,120);

-- Povoamento da Tabela Utilizador

  
insert into e_visitada_por (Data_entrada_fila, Data_entrada_atracao, Atracao_Id, Utilizador_Id) values
						("2017-06-15 09:34:21", "2017-06-15 09:36:21",1,1),
                        ("2017-06-15 09:38:21","2017-06-15 09:42:21",1,1);
                        
drop schema ParqueAquatico;
