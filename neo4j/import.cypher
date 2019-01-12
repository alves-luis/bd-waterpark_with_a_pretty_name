// Importar Utilizador

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Utilizador.csv" AS row
CREATE (:Utilizador {id: row.Id, nome: row.Nome, nacionalidade: row.Nacionalidade, hora_entrada_parque: row.Hora_entrada_parque, hora_saida_parque: row.Hora_saida_parque});

// Importar relacionamento entre Utilizador e Categoria

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Utilizador.csv" AS row
MATCH (categoria:Categoria {id: row.Categoria_Id})
MATCH (utilizador:Utilizador {id: row.Id})
MERGE (utilizador)-[:PERTENCE_A]->(categoria);

// Importar Categoria

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Categoria.csv" AS row
CREATE (:Categoria {id: row.Id, designacao: row.Designacao, idade_inferior: toFloat(row.Idade_inferior), idade_superior: toFloat(row.Idade_superior)});


// Exemplo de query

MATCH (n:Utilizador)
WHERE (localdatetime(n.hora_saida_parque)).hour - (localdatetime(n.hora_entrada_parque)).hour > 5  return n
