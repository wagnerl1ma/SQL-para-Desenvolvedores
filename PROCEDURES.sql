----- PROCEDURE

-- CRIAR PROCEDURE

CREATE PROCEDURE PesquisarCategoriaPorId(@id int)
as
begin
	SELECT * FROM categorias where id = @id
end

-- CRIAR PROCEDURE

CREATE PROCEDURE PersistirDadosEmCategoria(@descricao VARCHAR(255))
AS
BEGIN
	IF(@descricao IS NULL)
	BEGIN
		RAISERROR('Descricao nao é válida', 16, 1) -- VALIDACAO
		RETURN
	END

	INSERT INTO categorias(descricao, cadastrado_em) VALUES(@descricao, GETDATE())
END


-- USANDO AS PROCEDURES

EXECUTE dbo.PesquisarCategoriaPorId @id = 3

EXEC dbo.PersistirDadosEmCategoria @descricao = 'CATEGORIA PROCEDURE'
EXEC dbo.PersistirDadosEmCategoria @descricao = NULL

SELECT * FROM categorias


---- APAGAR PROCEDURE

--DROP PROCEDURE PersistirDadosEmCategoria