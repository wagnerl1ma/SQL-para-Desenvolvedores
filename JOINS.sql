
------------------------------------------------------ JOINS

---- INNER JOIN - é necessário ter dados em ambas as tabelas para exibir o resultado

--SELECT * FROM categorias A
--INNER JOIN cursos B ON A.id = B.categoria_id

SELECT B.descricao Curso, A.descricao Categoria FROM categorias A
INNER JOIN cursos B ON A.id = B.categoria_id


---- LEFT JOIN - prioridade para tabela do lado esquerdo. Só é preciso ter o resultado da tabela do lado esquerdo para exibir o resultado.

--INSERT INTO categorias (descricao) VALUES ('Categoria Teste');

SELECT A.descricao Categoria, B.descricao Curso FROM categorias A
LEFT JOIN cursos B ON A.id = B.categoria_id

---- RIGHT JOIN - prioridade para tabela do lado direito. Só é preciso ter o resultado da tabela do lado direito para exibir o resultado

SELECT A.descricao CURSO, B.descricao Categoria FROM cursos A
RIGHT JOIN categorias B ON B.id = A.categoria_id

---- FULL JOIN - Exibi todos os dados das tabelas relacionadas mesmo se for null

SELECT A.descricao CURSO, B.descricao Categoria FROM cursos A
FULL JOIN categorias B ON B.id = A.categoria_id

---- UNION/UNION ALL

--UNION: NAO TRAZ VALORES DUPLICADOS
SELECT descricao FROM cursos WHERE ID = 1
UNION -- FAZ UM MERGE ENTRE CONSULTAS
SELECT descricao FROM categorias WHERE ID = 2
UNION 
SELECT 'VALOR DINAMICO'
UNION 
SELECT 'VALOR DINAMICO'

--UNION ALL: TRAZ VALORES DUPLICADOS
SELECT descricao FROM cursos WHERE ID = 1
UNION ALL -- FAZ UM MERGE ENTRE CONSULTAS
SELECT descricao FROM categorias WHERE ID = 2
UNION ALL 
SELECT 'VALOR DINAMICO'
UNION ALL
SELECT 'VALOR DINAMICO'
