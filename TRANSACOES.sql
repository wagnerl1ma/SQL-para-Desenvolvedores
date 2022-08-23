use DesenvolvedorIO

---- TRANSACOES 
SELECT * FROM categorias

BEGIN TRAN
UPDATE categorias SET descricao = UPPER(descricao) WHERE id > 0
GO
DELETE FROM categorias WHERE ID = 4
GO
--COMMIT
--ROLLBACK


--- SAVE POINT
SELECT * FROM categorias

BEGIN TRAN
INSERT INTO categorias (descricao, cadastrado_em) VALUES ('Categoria nova 1', GETDATE())
INSERT INTO categorias (descricao, cadastrado_em) VALUES ('Categoria nova 2', GETDATE())
GO
SAVE TRANSACTION AtualizacaoPoint  -- MARCA UM PONTO PARA PODER FAZER ROLLBACK
UPDATE categorias SET descricao = 'Aplicacao WEB' where descricao = 'WEB'
GO

ROLLBACK TRANSACTION AtualizacaoPoint -- EXECUTANDO ROLLBACK SOMENTE NO UPDATE AtualizacaoPoint
COMMIT -- EXECUTANDO O COMMIT NOS INSERTS