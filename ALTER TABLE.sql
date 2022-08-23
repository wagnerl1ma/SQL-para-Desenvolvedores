----- CRIAR NOVO CAMPO NA TABELA 
use DesenvolvedorIO

---- ALTER TABLE categorias ADD TESTE VARCHAR(100) DEFAULT 'Teste'
ALTER TABLE categorias ADD TESTE VARCHAR(100)


---- REMOVER CAMPO DA TABELA 

ALTER TABLE categorias DROP COLUMN TESTE;
ALTER TABLE categorias DROP CONSTRAINT DF__categoria__TESTE__5AEE82B9; -- EXCLUINDO CONSTRAINT P PODER EXCLUIR A COLUNA

---- RENOMEAR CAMPO DA TABELA 

EXECUTE sp_rename 'dbo.categorias.TESTE', 'Observacao', 'COLUMN'

---- RENOMEAR NOME DA TABELA 

EXECUTE sp_rename 'TabelaTesteParaSequenciaAlterada', 'TabelaTesteParaSequencia'

select * from categorias
