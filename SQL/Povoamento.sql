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
	(1,"Big Show","Cabeça",32,"00:3:10",170),
    (2, "35 and Still Falling", "Joelho",2,"00:00:20",155),
    (3,"Bad River","Pé",20,"00:3:10",150),
    (4, "Good River", "Pé",40,"00:5:20",150),
    (5,"Blast","Cabeça",32,"00:1:00",170),
    (6, "Naboo", "Joelho",2,"00:00:56",165),
    (7,"Tatooine","Ombro",32,"00:00:50",165),
    (8, "Coruscant", "Ombro",2,"00:00:40",165),
    (9,"Geonosis","Pé",32,"00:1:10",165),
    (10, "Jakku", "Joelho",2,"00:1:20",165),
    (11,"Mustafar","Cabeça",32,"00:2:10",165),
    (12, "Scarif", "Ombro",2,"00:3:20",165),
    (13,"Death Star","Cabeça",32,"00:1:10",170);

    

-- Povoamento da Tabela Categoria
insert into Categoria (Id, Designacao, Preco, Idade_inferior, Idade_superior) values
	(1,"Normal",27,11,64),
    (2,"Junior",20,5,10),
    (3,"Infantil",0,0,4),
    (4,"Senior",20,64,120);

-- Povoamento da Tabela Utilizador
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (1,"Brennan Hendricks","Chines","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (2,"Barry Bentley","Brasileiro","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (3,"Velma Herrera","Americano","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (4,"Brian Gallagher","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (5,"Moses Rose","Alemao","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (6,"Walker Wong","Alemao","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (7,"Hunter Hayden","Hungaro","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (8,"Isaac Herring","Hungaro","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (9,"Ainsley Henderson","Frances","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (10,"Dacey Patel","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (11,"Ali Hendricks","Sueco","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (12,"Irene Rowe","Japones","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (13,"Nigel Pollard","Sueco","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (14,"Emery Copeland","Britanico","2017-06-15 09:00:00.0", "2017-06-15 11:00:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (15,"Mary Chapman","Frances","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (16,"Ivana Massey","Americano","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (17,"Joel Herrera","Britanico","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (18,"Geoffrey Velasquez","Brasileiro","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (19,"Yoshi Booker","Sueco","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (20,"India Fernandez","Turco","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (21,"Phyllis Rodgers","Portugues","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (22,"Perry Guerra","Portugues","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (23,"Lillian Brock","Portugues","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (24,"Blair Medina","Portugues","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (25,"Germane Cox","Portugues","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (26,"Aiko Bradford","Portugues","2017-06-15 11:00:00.0", "2017-06-15 16:00:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (27,"Kyla Oconnor","Sueco","2017-06-15 16:00:00.0", "2017-06-15 18:00:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (28,"Nola Lucas","Frances","2017-06-15 16:00:00.0", "2017-06-15 18:00:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (29,"Kylynn Bailey","Japones","2017-09-08 12:29:22.0","2017-09-08 16:39:52.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (30,"Brielle Mack","Hungaro","2017-05-02 11:30:41.0","2017-05-02 16:40:40.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (31,"Otto Mooney","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (32,"Cathleen Beard","Hungaro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (33,"Wade Brewer","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (34,"Serena Merritt","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (35,"Jemima Griffin","Turco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (36,"Cyrus Alvarado","Americano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (37,"Clarke Velez","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (38,"Erasmus Ochoa","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (39,"Judah Maldonado","Frances","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (40,"Demetrius White","Americano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (41,"Lawrence Douglas","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (42,"Charde Vazquez","Turco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (43,"Acton Murray","Hungaro","2017-06-10 11:29:11.0","2017-06-10 15:39:45.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (44,"Martena Hines","Hungaro","2017-07-22 12:29:10.0","2017-07-22 16:39:56.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (45,"Dawn Foreman","Britanico","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (46,"Vivien Riley","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (47,"Stella Floyd","Hungaro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (48,"Jelani Martin","Portugues","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (49,"August Walsh","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (50,"Maggie Fowler","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (51,"Berk Parks","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (52,"Orli Carter","Americano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (53,"Jakeem Wong","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (54,"Hayes Reid","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (55,"Mollie Weaver","Americano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (56,"Steven Rosario","Americano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (57,"Baxter Barr","Britanico","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (58,"Kirby Owens","Frances","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (59,"Florence Cervantes","Portugues","2017-06-16 11:07:18.0","2017-06-16 15:17:34.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (60,"Faith Jackson","Chines","2017-06-17 13:28:00.0","2017-06-17 16:38:30.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (61,"Lawrence Townsend","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (62,"Blaine Dillard","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (63,"Blaine Grimes","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (64,"Zorita Kirk","Americano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (65,"Winifred English","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (66,"Jermaine Buckner","Britanico","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (67,"Hedwig Avila","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (68,"Cassandra Hooper","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (69,"Lars Fowler","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (70,"Geraldine Avery","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (71,"Adria Armstrong","Chines","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (72,"Stacy Rasmussen","Portugues","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (73,"Wylie Frederick","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (74,"Dominique Bruce","Holandes","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (75,"Kyle Oconnor","Chines","2017-09-19 10:30:12.0","2017-09-19 15:40:29.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (76,"Wylie Cantrell","Turco","2017-06-12 13:33:22.0","2017-06-12 15:43:36.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (77,"Tyrone Solis","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (78,"Pamela Noble","Chines","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (79,"Sheila Greer","Turco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (80,"Reed Holman","Turco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (81,"Dana Huff","Chines","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (82,"Wesley Pierce","Britanico","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (83,"Allen Conner","Britanico","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (84,"Lisandra Hardin","Frances","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (85,"Frances Alvarez","Hungaro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (86,"Nissim Bryant","Brasileiro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (87,"Adara Blackburn","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (88,"Marsden Mcgee","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (89,"Jeanette Wagner","Turco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (90,"Latifah Lang","Britanico","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (91,"Ruth Sosa","Americano","2017-07-08 10:07:59.0","2017-07-08 15:17:41.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (92,"Orlando Kinney","Hungaro","2017-07-21 11:21:01.0","2017-07-21 15:31:41.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (93,"Nyssa Clayton","Frances","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (94,"Dante Buckley","Americano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (95,"Fritz Noel","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (96,"Ezekiel Sykes","Brasileiro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (97,"Clementine Chase","Portugues","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (98,"Zephr Cherry","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (99,"Nissim Roman","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (100,"Keelie Travis","Turco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (101,"Mollie Mcneil","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (102,"Quinlan Yates","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (103,"Demetria Moody","Portugues","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (104,"Jelani Ruiz","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (105,"Hanna Cherry","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (106,"Walter Gaines","Portugues","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (107,"Damian Trujillo","Hungaro","2017-07-23 13:15:28.0","2017-07-23 16:25:11.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (108,"Raphael Hunter","Espanhol","2017-06-18 13:17:25.0","2017-06-18 15:27:40.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (109,"Lisandra Hays","Italiano","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (110,"Teegan Armstrong","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (111,"Moses Gibson","Britanico","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (112,"Timothy Young","Frances","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (113,"Lana Golden","Britanico","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (114,"Noah Boyle","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (115,"Sawyer Phelps","Frances","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (116,"Francesca Olson","Brasileiro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (117,"Eden Thompson","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (118,"Wallace Woodard","Hungaro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (119,"Octavia Good","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (120,"Ignatius Rowe","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (121,"Cheyenne Rodriquez","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (122,"Evan Glenn","Frances","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (123,"Barrett Walker","Portugues","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (124,"Clayton Carrillo","Frances","2017-10-26 11:43:23.0","2017-10-26 15:53:23.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (125,"Tatyana Green","Holandes","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (126,"Kendall Olson","Portugues","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (127,"Autumn White","Turco","2017-05-03 09:17:47.0","2017-05-03 15:27:29.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (128,"Valentine Wheeler","Brasileiro","2017-07-11 10:45:43.0","2017-07-11 15:55:07.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (129,"Sarah Levine","Espanhol","2017-10-01 11:49:54.0","2017-10-01 16:59:24.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (130,"Dominique Baldwin","Frances","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (131,"Stone Campos","Chines","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (132,"Vernon Miller","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (133,"Gannon Patrick","Brasileiro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (134,"Veda Bradshaw","Turco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (135,"Germaine Houston","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (136,"Clayton Huffman","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (137,"Silas Becker","Holandes","2017-09-23 11:08:42.0","2017-09-23 15:18:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (138,"Timothy Bonner","Britanico","2017-06-16 12:44:55.0","2017-06-16 16:54:22.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (139,"Angela Manning","Alemao","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (140,"Christine Shannon","Holandes","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (141,"Acton Lopez","Hungaro","2017-08-05 11:40:47.0","2017-08-05 16:50:41.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (142,"Cleo Davidson","Holandes","2017-05-07 10:09:25.0","2017-05-07 16:19:59.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (143,"Driscoll Sheppard","Britanico","2017-08-07 09:46:08.0","2017-08-07 15:56:20.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (144,"Cleo Stark","Turco","2017-07-10 11:09:58.0","2017-07-10 15:19:28.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (145,"Mira Reid","Turco","2017-10-14 11:45:59.0","2017-10-14 16:55:22.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (146,"Abigail York","Holandes","2017-05-02 09:47:52.0","2017-05-02 15:57:59.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (147,"Kylie Justice","Hungaro","2017-07-15 10:49:46.0","2017-07-15 16:59:20.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (148,"Andrew Elliott","Portugues","2017-05-07 10:38:33.0","2017-05-07 16:48:21.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (149,"Brenden Delaney","Holandes","2017-06-06 11:25:17.0","2017-06-06 15:35:09.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (150,"Brittany Love","Turco","2017-09-28 13:12:08.0","2017-09-28 16:22:39.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (151,"Griffith Wilkerson","Sueco","2017-08-17 13:24:27.0","2017-08-17 16:34:58.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (152,"Kuame Wilcox","Sueco","2017-07-13 12:22:29.0","2017-07-13 16:32:47.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (153,"Whilemina Carey","Portugues","2017-06-30 10:18:34.0","2017-06-30 15:28:30.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (154,"Kiayada Klein","Hungaro","2017-08-03 13:00:28.0","2017-08-03 15:10:07.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (155,"Gareth Lynn","Britanico","2017-05-04 11:03:41.0","2017-05-04 16:13:10.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (156,"Hannah Hickman","Espanhol","2017-09-27 09:16:39.0","2017-09-27 16:26:08.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (157,"Nerea Crawford","Americano","2017-09-14 09:41:13.0","2017-09-14 16:51:46.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (158,"Cheryl Wynn","Italiano","2017-08-23 12:20:34.0","2017-08-23 16:30:57.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (159,"Rhoda Gross","Chines","2017-06-07 09:23:42.0","2017-06-07 16:33:12.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (160,"Yasir Vega","Americano","2017-08-10 13:03:36.0","2017-08-10 15:13:14.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (161,"Quinn Whitley","Brasileiro","2017-06-26 13:37:36.0","2017-06-26 15:47:59.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (162,"Yasir Reeves","Japones","2017-10-04 10:01:58.0","2017-10-04 16:11:25.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (163,"Gannon Montgomery","Alemao","2017-08-11 09:33:22.0","2017-08-11 15:43:09.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (164,"Keely Kim","Alemao","2017-10-28 10:15:24.0","2017-10-28 15:25:52.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (165,"Elaine Duke","Japones","2017-08-31 12:34:45.0","2017-08-31 16:44:53.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (166,"Isabelle Gross","Americano","2017-08-31 11:22:25.0","2017-08-31 16:32:04.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (167,"Hedley Holder","Brasileiro","2017-06-22 10:18:31.0","2017-06-22 15:28:22.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (168,"Shelby Bishop","Frances","2017-10-16 09:10:59.0","2017-10-16 16:20:20.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (169,"Hadley Vasquez","Espanhol","2017-09-04 11:19:08.0","2017-09-04 16:29:13.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (170,"Kelly Price","Hungaro","2017-09-15 13:10:17.0","2017-09-15 15:20:50.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (171,"Kermit Summers","Turco","2017-05-27 12:32:49.0","2017-05-27 16:42:10.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (172,"Fleur Mcconnell","Portugues","2017-08-20 10:44:30.0","2017-08-20 16:54:41.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (173,"Zelenia Blankenship","Chines","2017-08-02 13:19:28.0","2017-08-02 16:29:44.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (174,"August Floyd","Britanico","2017-06-11 12:07:39.0","2017-06-11 15:17:40.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (175,"Lucy Kent","Hungaro","2017-06-25 10:12:32.0","2017-06-25 16:22:46.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (176,"Rajah Olson","Italiano","2017-06-30 13:43:07.0","2017-06-30 16:53:25.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (177,"Lucas Salinas","Hungaro","2017-08-23 09:10:14.0","2017-08-23 15:20:27.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (178,"Charlotte Ochoa","Americano","2017-09-25 09:21:48.0","2017-09-25 16:31:23.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (179,"Leandra Fletcher","Espanhol","2017-09-13 13:10:51.0","2017-09-13 16:20:26.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (180,"Merritt Ballard","Frances","2017-05-25 09:47:14.0","2017-05-25 15:57:11.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (181,"Gisela Fitzgerald","Turco","2017-09-24 13:31:59.0","2017-09-24 15:41:19.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (182,"Vincent Bright","Americano","2017-07-24 12:26:02.0","2017-07-24 16:36:52.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (183,"Risa Holder","Japones","2017-05-25 11:05:43.0","2017-05-25 16:15:04.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (184,"Keegan Kerr","Turco","2017-07-02 10:08:23.0","2017-07-02 16:18:52.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (185,"Dillon Dennis","Brasileiro","2017-06-21 13:06:19.0","2017-06-21 15:16:06.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (186,"Helen Avila","Brasileiro","2017-06-02 10:46:21.0","2017-06-02 16:56:28.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (187,"Edward Durham","Frances","2017-06-06 09:48:13.0","2017-06-06 16:58:45.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (188,"Joy Howard","Sueco","2017-07-05 12:20:29.0","2017-07-05 15:30:07.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (189,"Ryan Levy","Hungaro","2017-08-07 11:34:40.0","2017-08-07 16:44:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (190,"Mannix Mayo","Chines","2017-07-21 10:10:50.0","2017-07-21 16:20:23.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (191,"Rosalyn Lester","Turco","2017-05-14 13:12:22.0","2017-05-14 15:22:06.0",4,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (192,"Shelly Wheeler","Sueco","2017-10-10 11:37:25.0","2017-10-10 16:47:14.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (193,"Colleen Osborn","Britanico","2017-07-09 11:24:41.0","2017-07-09 16:34:28.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (194,"Patrick Barrera","Holandes","2017-05-14 12:01:11.0","2017-05-14 16:11:53.0",2,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (195,"Indira Johnson","Espanhol","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (196,"Quyn Rosales","Hungaro","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (197,"Eric Melton","Holandes","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",1,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (198,"Mona Pickett","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (199,"Gary Rosa","Sueco","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",3,"0");
INSERT INTO Utilizador (Id,Nome,Nacionalidade,Hora_entrada_parque,Hora_saida_parque,Categoria_Id,N_Atracoes_Visitadas) VALUES (200,"Raphael Bartlett","Japones","2017-06-15 09:00:00.0", "2017-06-15 17:55:00.0",4,"0");
  
-- Povoamento das visitas  
insert into e_visitada_por (Data_entrada_fila, Data_entrada_atracao, Atracao_Id, Utilizador_Id) values
						("2017-06-15 09:5:22", "2017-06-15 09:5:33",1,1),
                        ("2017-06-15 09:6:42", "2017-06-15 09:7:10",1,2),
                        ("2017-06-15 09:8:51", "2017-06-15 09:9:11",1,3),
                        ("2017-06-15 09:10:22", "2017-06-15 09:11:25",1,4),
                        ("2017-06-15 09:13:14", "2017-06-15 09:17:16",1,5),
                        ("2017-06-15 09:20:16", "2017-06-15 09:23:07",1,6),
                        ("2017-06-15 09:38:22", "2017-06-15 09:42:25",1,7),
                        ("2017-06-15 10:5:22", "2017-06-15 10:5:33",1,8),
                        ("2017-06-15 10:6:42", "2017-06-15 10:7:10",1,9),
                        ("2017-06-15 10:8:51", "2017-06-15 10:9:11",1,10),
                        ("2017-06-15 10:10:22", "2017-06-15 10:11:25",1,11),
                        ("2017-06-15 10:13:14", "2017-06-15 10:17:16",1,12),
                        ("2017-06-15 10:20:16", "2017-06-15 10:23:07",1,13),
                        ("2017-06-15 10:38:22", "2017-06-15 10:42:25",1,14),
                        ("2017-06-15 11:5:22", "2017-06-15 11:5:33",1,15),
                        ("2017-06-15 11:6:42", "2017-06-15 11:7:10",1,16),
                        ("2017-06-15 11:8:51", "2017-06-15 11:9:11",1,17),
                        ("2017-06-15 11:10:22", "2017-06-15 11:11:25",1,18),
                        ("2017-06-15 11:13:14", "2017-06-15 11:17:16",1,19),
                        ("2017-06-15 11:20:16", "2017-06-15 11:23:07",1,20),
                        ("2017-06-15 11:38:22", "2017-06-15 11:42:25",1,21),
                        ("2017-06-15 11:34:21", "2017-06-15 11:36:21",1,22),
                        ("2017-06-15 12:5:22", "2017-06-15 12:5:33",1,23),
                        ("2017-06-15 13:6:42", "2017-06-15 13:7:10",1,24),
                        ("2017-06-15 14:8:51", "2017-06-15 14:9:11",1,25),
                        ("2017-06-15 15:10:22", "2017-06-15 15:11:25",1,26),
                        ("2017-06-15 16:13:14", "2017-06-15 16:17:16",1,27),
                        ("2017-06-15 17:20:16", "2017-06-15 17:23:07",1,28),
                        ("2017-06-15 10:10:22", "2017-06-15 10:11:25",2,31),
                        ("2017-06-15 10:13:14", "2017-06-15 10:17:16",2,32),
                        ("2017-06-15 10:20:16", "2017-06-15 10:23:07",2,33),
                        ("2017-06-15 10:38:22", "2017-06-15 10:42:25",2,34),
                        ("2017-06-15 11:10:22", "2017-06-15 11:11:25",2,35),
                        ("2017-06-15 11:13:14", "2017-06-15 11:17:16",2,36),
                        ("2017-06-15 11:20:16", "2017-06-15 11:23:07",2,37),
                        ("2017-06-15 11:38:22", "2017-06-15 11:42:25",2,38),
                        ("2017-06-15 11:34:21", "2017-06-15 11:36:21",2,39),
                        ("2017-06-15 15:10:22", "2017-06-15 15:11:25",2,40),
                        ("2017-06-15 16:13:14", "2017-06-15 16:17:16",2,41),
                        ("2017-06-15 17:20:16", "2017-06-15 17:23:07",2,42),
                        ("2017-06-15 09:37:21", "2017-06-15 09:40:21",2,45),
                        ("2017-06-16 09:34:21", "2017-06-16 09:36:21",2,46),
                        ("2017-06-15 10:10:22", "2017-06-15 10:11:25",3,47),
                        ("2017-06-15 10:13:14", "2017-06-15 10:17:16",3,48),
                        ("2017-06-15 10:20:16", "2017-06-15 10:23:07",3,49),
                        ("2017-06-15 10:38:22", "2017-06-15 10:42:25",3,50),
                        ("2017-06-15 11:10:22", "2017-06-15 11:11:25",3,51),
                        ("2017-06-15 11:13:14", "2017-06-15 11:17:16",3,52),
                        ("2017-06-15 11:20:16", "2017-06-15 11:23:07",3,53),
                        ("2017-06-15 11:38:22", "2017-06-15 11:42:25",3,54),
                        ("2017-06-15 11:34:21", "2017-06-15 11:36:21",3,55),
                        ("2017-06-15 15:10:22", "2017-06-15 15:11:25",3,56),
                        ("2017-06-15 16:13:14", "2017-06-15 16:17:16",3,57),
                        ("2017-06-15 17:20:16", "2017-06-15 17:23:07",3,58),
                        ("2017-06-15 09:37:21", "2017-06-15 09:40:21",3,61),
                        ("2017-06-16 09:34:21", "2017-06-16 09:36:21",3,62),
                        ("2017-06-15 10:10:22", "2017-06-15 10:11:25",4,63),
                        ("2017-06-15 10:13:14", "2017-06-15 10:17:16",4,64),
                        ("2017-06-15 10:20:16", "2017-06-15 10:23:07",4,65),
                        ("2017-06-15 10:38:22", "2017-06-15 10:42:25",4,66),
                        ("2017-06-15 11:10:22", "2017-06-15 11:11:25",4,67),
                        ("2017-06-15 11:13:14", "2017-06-15 11:17:16",4,68),
                        ("2017-06-15 11:20:16", "2017-06-15 11:23:07",4,69),
                        ("2017-06-15 11:38:22", "2017-06-15 11:42:25",4,70),
                        ("2017-06-15 11:34:21", "2017-06-15 11:36:21",4,71),
                        ("2017-06-15 15:10:22", "2017-06-15 15:11:25",4,72),
                        ("2017-06-15 16:13:14", "2017-06-15 16:17:16",4,73),
                        ("2017-06-15 17:20:16", "2017-06-15 17:23:07",5,74),
                        ("2017-06-15 09:37:21", "2017-06-15 09:40:21",5,77),
                        ("2017-06-16 09:34:21", "2017-06-16 09:36:21",5,78),
                        ("2017-06-15 10:10:22", "2017-06-15 10:11:25",6,79),
                        ("2017-06-15 10:13:14", "2017-06-15 10:17:16",6,80),
                        ("2017-06-15 10:20:16", "2017-06-15 10:23:07",6,81),
                        ("2017-06-15 10:38:22", "2017-06-15 10:42:25",6,82),
                        ("2017-06-15 11:10:22", "2017-06-15 11:11:25",6,83),
                        ("2017-06-15 11:13:14", "2017-06-15 11:17:16",6,84),
                        ("2017-06-15 11:20:16", "2017-06-15 11:23:07",6,85),
                        ("2017-06-15 11:38:22", "2017-06-15 11:42:25",6,86),
                        ("2017-06-15 11:34:21", "2017-06-15 11:36:21",6,87),
                        ("2017-06-15 15:10:22", "2017-06-15 15:11:25",7,88),
                        ("2017-06-15 16:13:14", "2017-06-15 16:17:16",7,89),
                        ("2017-06-15 17:20:16", "2017-06-15 17:23:07",7,90),
                        ("2017-06-15 09:37:21", "2017-06-15 09:40:21",7,93),
                        ("2017-06-16 09:34:21", "2017-06-16 09:36:21",7,94),
                        ("2017-06-15 10:10:22", "2017-06-15 10:11:25",8,95),
                        ("2017-06-15 10:13:14", "2017-06-15 10:17:16",8,96),
                        ("2017-06-15 10:20:16", "2017-06-15 10:23:07",8,97),
                        ("2017-06-15 10:38:22", "2017-06-15 10:42:25",8,98),
                        ("2017-06-15 11:10:22", "2017-06-15 11:11:25",8,99),
                        ("2017-06-15 11:13:14", "2017-06-15 11:17:16",8,100),
                        ("2017-06-15 11:20:16", "2017-06-15 11:23:07",9,101),
                        ("2017-06-15 11:38:22", "2017-06-15 11:42:25",9,102),
                        ("2017-06-15 11:34:21", "2017-06-15 11:36:21",9,103),
                        ("2017-06-15 15:10:22", "2017-06-15 15:11:25",9,104),
                        ("2017-06-15 16:13:14", "2017-06-15 16:17:16",9,105),
                        ("2017-06-15 17:20:16", "2017-06-15 17:23:07",9,106),
                        ("2017-06-15 09:37:21", "2017-06-15 09:40:21",9,109),
                        ("2017-06-16 09:34:21", "2017-06-16 09:36:21",9,110),
                        ("2017-06-15 10:10:22", "2017-06-15 10:11:25",10,195),
                        ("2017-06-15 10:13:14", "2017-06-15 10:17:16",10,196),
                        ("2017-06-15 10:20:16", "2017-06-15 10:23:07",10,197),
                        ("2017-06-15 10:38:22", "2017-06-15 10:42:25",10,198),
                        ("2017-06-15 11:10:22", "2017-06-15 11:11:25",10,199),
                        ("2017-06-15 11:13:14", "2017-06-15 11:17:16",10,130),
                        ("2017-06-15 11:20:16", "2017-06-15 11:23:07",11,131),
                        ("2017-06-15 11:38:22", "2017-06-15 11:42:25",11,132),
                        ("2017-06-15 11:34:21", "2017-06-15 11:36:21",11,133),
                        ("2017-06-15 15:10:22", "2017-06-15 15:11:25",11,134),
                        ("2017-06-15 16:13:14", "2017-06-15 16:17:16",11,135),
                        ("2017-06-15 17:20:16", "2017-06-15 17:23:07",11,136),
                        ("2017-06-15 09:37:21", "2017-06-15 09:40:21",11,139),
                        ("2017-06-16 09:34:21", "2017-06-16 09:36:21",11,140),  
						("2017-06-15 10:10:22", "2017-06-15 10:11:25",12,111),
                        ("2017-06-15 10:13:14", "2017-06-15 10:17:16",12,112),
                        ("2017-06-15 10:20:16", "2017-06-15 10:23:07",12,113),
                        ("2017-06-15 10:38:22", "2017-06-15 10:42:25",12,114),
                        ("2017-06-15 11:10:22", "2017-06-15 11:11:25",12,115),
                        ("2017-06-15 11:13:14", "2017-06-15 11:17:16",12,116),
                        ("2017-06-15 11:20:16", "2017-06-15 11:23:07",13,117),
                        ("2017-06-15 11:38:22", "2017-06-15 11:42:25",13,118),
                        ("2017-06-15 11:34:21", "2017-06-15 11:36:21",13,119),
                        ("2017-06-15 15:10:22", "2017-06-15 15:11:25",13,120),
                        ("2017-06-15 16:13:14", "2017-06-15 16:17:16",13,121),
                        ("2017-06-15 17:20:16", "2017-06-15 17:23:07",13,122),
                        ("2017-06-15 09:37:21", "2017-06-15 09:40:21",13,125),
                        ("2017-06-16 09:34:21", "2017-06-16 09:36:21",13,126);

-- Povoamento do horário de trabalho  
insert into trabalha_em (Data_de_Inicio, Data_de_Fim, Funcionário_Id, Atracao_Id) values
						("2017-06-15 09:00:00", "2017-06-15 11:00:00",1,1),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",2,1),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",3,1),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",4,1),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",5,1),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",6,2),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",7,2),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",8,2),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",9,2),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",10,2),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",11,3),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",12,3),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",13,3),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",14,3),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",15,3),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",16,4),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",17,4),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",18,4),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",19,4),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",20,4),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",21,5),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",22,5),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",23,5),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",24,5),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",25,5),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",26,6),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",27,6),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",28,6),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",29,6),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",30,6),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",31,7),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",32,7),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",33,7),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",34,7),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",35,7),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",36,8),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",37,8),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",38,8),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",39,8),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",40,8),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",5,9),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",1,9),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",2,9),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",3,9),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",4,9),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",10,10),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",6,10),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",7,10),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",8,10),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",9,10),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",15,11),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",11,11),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",12,11),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",13,11),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",14,11),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",20,12),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",16,12),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",17,12),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",18,12),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",19,12),
                        ("2017-06-15 09:00:00", "2017-06-15 11:00:00",25,13),
                        ("2017-06-15 11:00:00", "2017-06-15 13:00:00",21,13),
                        ("2017-06-15 13:00:00", "2017-06-15 15:00:00",22,13),
                        ("2017-06-15 15:00:00", "2017-06-15 17:00:00",23,13),
                        ("2017-06-15 17:00:00", "2017-06-15 18:00:00",24,13);
-- drop schema parqueaquatico;
