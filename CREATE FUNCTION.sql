------ CRIANDO FUNCOES

-- CRIAR FUNCAO P/ MASCARAR DADOS

CREATE FUNCTION Mascarar(@data VARCHAR(255), @quantidadeCaractere int)
RETURNS VARCHAR(255)
AS 
BEGIN -- INICIA O BLOCO DA FUNCTION

	RETURN LEFT(@data, @quantidadeCaractere) + '**** ****'

END -- FINALIZA O BLOCO DA FUNCTION

-- CRIAR FUNCAO P/ CONTAR REGISTRO

CREATE FUNCTION ContarRegistros()
RETURNS INT
AS 
BEGIN -- INICIA O BLOCO DA FUNCTION

	RETURN (SELECT COUNT(*) FROM categorias)

END -- FINALIZA O BLOCO DA FUNCTION


-- CRIAR FUNCAO P/ CAPTURAR CATEGORIA POR ID -- funcao com valor de tabela

CREATE FUNCTION GetCategoriaById(@id int)
RETURNS TABLE
AS 
RETURN (SELECT * FROM categorias where id = @id)


-- USANDO AS FUNCTIONS

SELECT dbo.Mascarar('Wagner Lima', 5)
SELECT dbo.Mascarar(descricao, 4) FROM categorias -- USANDO A FUNCTION CRIADA NOS DADOS DE UMA TABELA

SELECT dbo.ContarRegistros()

SELECT * from dbo.GetCategoriaById(3) -- funcao com valor de tabela