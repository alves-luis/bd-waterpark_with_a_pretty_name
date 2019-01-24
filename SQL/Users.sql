create role marketing, funcionario, sensor;
	grant select on ParqueAquatico.Utilizador to marketing;
    grant select on ParqueAquatico.Atracao to marketing;
    grant select on ParqueAquatico.e_visitada_por to marketing;
    
    grant insert on ParqueAquatico.Utilizador to funcionario;
    grant select on ParqueAquatico.Categoria to funcionario;
    
    grant insert on ParqueAquatico.trabalha_em to sensor;
    grant insert on ParqueAquatico.e_visitada_por to sensor;
    grant update on ParqueAquatico.e_visitada_por to sensor;
    grant update on ParqueAquatico.Utilizador to sensor;
    
create user if not exists marketingOne 
	identified with sha256_password by '3Microsoft1Is2The4Best5'
	with max_queries_per_hour 60;
    
grant marketing to marketingOne;

create user if not exists sensorOne 
	identified with sha256_password by '3Unix1Is2Not4That5Great';
    
grant sensor to sensorOne;

create user if not exists funcionarioOne 
	identified with sha256_password by 'IRanOutOfIdeas34';
    
create user if not exists funcionarioTwo
	identified with sha256_password by 'StillNoIdeas67';

create user if not exists funcionarioThree 
	identified with sha256_password by 'NopeStillEmpty32';
    
grant funcionario to funcionarioOne, funcionarioTwo, funcionarioThree;
