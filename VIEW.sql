----- CRIANDO VIEWS

CREATE VIEW vwCursos
AS
SELECT c.descricao as Descricao, ca.descricao as Categoria FROM cursos C
INNER JOIN categorias CA ON C.categoria_id = CA.id


--- USANDO A VIEW

SELECT * FROM vwCursos
SELECT * FROM vwCursos where Descricao = 'EF Core'

--- ALTERAR VIEW

ALTER VIEW vwCursos
AS
SELECT c.descricao as Descricao, ca.descricao as Categoria FROM cursos C
INNER JOIN categorias CA ON C.categoria_id = CA.id


--- APAGAR VIEW 
--DROP VIEW vwCursos