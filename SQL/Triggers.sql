use parqueaquatico;

delimiter //
-- Atualizar a contagem de visitas 
drop trigger if exists AtualizaAtracoesVisitadas //

create trigger AtualizaAtracoesVisitadas after insert on e_visitada_por
	for each row
begin
	update Utilizador set Utilizador.N_Atracoes_Visitadas = Utilizador.N_Atracoes_Visitadas + 1
		where Utilizador.Id = NEW.Utilizador_Id;
end//

delimiter //
-- Verifica se as datas de visita a uma atração são válidas
drop trigger if exists VerificaDatasAtracao //

create trigger VerificaDatasAtracao before insert on e_visitada_por
	for each row
begin
	declare dataEntrada DATETIME;
    declare dataSaida DATETIME;
    select Utilizador.Hora_entrada_parque from Utilizador where Utilizador.Id = NEW.Utilizador_id into dataEntrada;
    select Utilizador.Hora_saida_parque from Utilizador where Utilizador.Id = NEW.Utilizador_id into dataSaida;
	if (not (date(NEW.Data_entrada_fila) = date(dataEntrada))) or (NEW.Data_entrada_fila < dataEntrada) or ((dataSaida <> null) and (NEW.Data_entrada_fila > dataSaida)) then
         signal sqlstate '45000' set message_text = 'Impossível ir a uma atração se o Utilizador não está no Parque!';
	end if;
end //
