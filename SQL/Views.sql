USE ParqueAquatico;


drop view estado_fila_atracoes;
Create View estado_fila_atracoes


	as SELECT V.Atracao_Id as "Atração",count(V.Utilizador_Id) as "Nº de utilizadores em espera" from e_visitada_por as V
    where (V.data_entrada_atracao = null);

select * from estado_fila_atracoes;

drop view categoria_numbers;
Create View categoria_numbers


	as SELECT Utilizador.Categoria_Id as "Categoria" ,COUNT(Utilizador.Categoria_Id) as "Nº de visitas" FROM Utilizador 
	INNER JOIN  Categoria ON Categoria.Id=Utilizador.Categoria_Id
	GROUP BY (Categoria.Id);
    

select * from categoria_numbers;





drop view top5_atracoes;
Create View top5_atracoes

	as SELECT A.Designacao as "Nome da Atração", COUNT(A.Id) as "Nº de visitantes" FROM Atracao As A
    INNER JOIN e_visitada_por ON e_visitada_por.Atracao_Id= A.Id
    WHERE (e_visitada_por.Data_entrada_atracao IS NOT NULL)
    GROUP BY (A.Id)
    ORDER BY COUNT(A.Id) DESC
    Limit 5;
    

select * from top5_atracoes;













