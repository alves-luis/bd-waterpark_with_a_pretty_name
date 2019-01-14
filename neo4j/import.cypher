// IMPORTAR TABELAS

// Importar Utilizador

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Utilizador.csv" AS row
CREATE (:Utilizador {id: toInteger(row.Id), nome: row.Nome, nacionalidade: row.Nacionalidade, hora_entrada_parque: row.Hora_entrada_parque, hora_saida_parque: row.Hora_saida_parque});


// Importar Categoria

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Categoria.csv" AS row
CREATE (:Categoria {id: toInteger(row.Id), designacao: row.Designacao, idade_inferior: toInteger(row.Idade_inferior), idade_superior: toInteger(row.Idade_superior)});

// Importar Funcionario

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Funcionario.csv" AS row
CREATE (:Funcionario {id: toInteger(row.Id), nome: row.Nome, salario: toFloat(row.Salario)});


// Importar Atracao

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Atracao.csv" AS row
CREATE (:Atracao {id: toInteger(row.Id), designacao: row.Nome, zona: row.Zona, capacidade: toInteger(row.Capacidade), duracao: row.Duracao, altura_minima: toInteger(row.Altura_Minima)});



// IMPORTAR RELACIONAMENTOS

// Importar relacionamento entre Utilizador e Categoria

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Utilizador.csv" AS row
MATCH (categoria:Categoria {id: toInteger(row.Categoria_Id)})
MATCH (utilizador:Utilizador {id: toInteger(row.Id)})
CREATE (utilizador)-[:PERTENCE_A]->(categoria);


// Importar relacionamento entre Atracão e Utilizador (e_visitada_por)

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///e_visitada_por.csv" AS row
MATCH (atracao:Atracao {id: toInteger(row.Atracao_Id)})
MATCH (utilizador:Utilizador {id: toInteger(row.Utilizador_Id)})
CREATE (atracao)-[:E_VISITADA_POR {data_entrada_fila: row.Data_entrada_fila, data_entrada_atracao: row.Data_entrada_atracao}]->(utilizador);

// Importar relacionamento entre Funcionario e Atracao (trabalha_em)

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///trabalha_em.csv" AS row
MATCH (atracao:Atracao {id: toInteger(row.Atracao_Id)})
MATCH (funcionario:Utilizador {id: toInteger(row.Funcionário_Id)})
CREATE (funcionario)-[:TRABALHA_EM {data_de_inicio: row.Data_de_Inicio, data_de_fim: row.Data_de_Fim}]->(atracao);



// EXEMPLO DE QUERIE

MATCH (n:Utilizador)
WHERE (localdatetime(n.hora_saida_parque)).hour - (localdatetime(n.hora_entrada_parque)).hour > 5  return n
