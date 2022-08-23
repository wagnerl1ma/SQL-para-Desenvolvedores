--SELECT * FROM alunos WHERE nome = 'Rafael'

--SELECT * FROM alunos WHERE id >= 3

--SELECT * FROM alunos WHERE id >= 3 AND nome='Wagner'

--SELECT * FROM alunos WHERE id >= 3 AND (nome='Wagner' OR nome='Heloysa') 

--SELECT * FROM alunos WHERE nome LIKE 'Rafael'

--SELECT * FROM alunos WHERE nome LIKE 'Ra%' -- Consultar pelos caracteres iniciais 

--SELECT * FROM alunos WHERE nome LIKE '%o' -- Consultar pelos caracteres finais 

--SELECT * FROM alunos WHERE nome LIKE '%a%' -- Consultar pelos caracteres iniciais, meio e fim 

--SELECT * FROM alunos WHERE nome LIKE 'R%L' -- Consultar pelos caracteres iniciais R e o final L

--SELECT MAX(id) FROM alunos -- verifica o maximo de registro

--SELECT MIN(id) FROM alunos -- -- verifica o minimo de registro

--SELECT * FROM alunos WHERE id = (SELECT MAX(id) FROM alunos)

--SELECT * FROM cursos

--SELECT COUNT(*) as TotalRegistro, SUM(total_horas) as Horas, SUM(valor) as ValorTotal FROM cursos -- Count: conta o total de registros. --Sum: soma os valores de cada linha e retorna o total

--SELECT cidade, estado, COUNT(*) FROM alunos GROUP BY cidade, estado -- usando Group By é removido os duplicados, porém usanso o COUNT(*) conseguimos verificar quantas registros tem cada cidade e estado

--SELECT cidade, estado, COUNT(*) Total FROM alunos 
--GROUP BY cidade, estado
--HAVING COUNT(*) > 1 -- seleciona as cidades que tem mais de um aluno cadastrado

--SELECT * FROM alunos WHERE id IN (2, 4)
--SELECT * FROM alunos WHERE id IN (SELECT id FROM alunos)

--SELECT * FROM alunos WHERE id BETWEEN 2 AND 4 -- consultar entre o intervalo 2 e 4

--select DISTINCT cidade, estado from alunos    -- DISTINCT: ELIMINA REGISTROS DUPLICADOS

SELECT TOP 2 * FROM alunos ORDER BY ID -- TOP E ORDER BY

SELECT TOP 50 PERCENT * FROM alunos ORDER BY ID -- PERCENT: SELECT 50% DA TABELA

SELECT * FROM alunos ORDER BY ID OFFSET 2 ROWS -- IGNORA AS DUAS PRIMEIRAS LINHAS E COMEÇA A PARTIR DA TERCEIRA

SELECT * FROM alunos ORDER BY ID OFFSET 2 ROWS FETCH FIRST 2 ROWS ONLY -- IGNORA AS DUAS PRIMEIRAS LINHAS E COMEÇA A PARTIR DA TERCEIRA E PEGAR OS 2 PROXIMOS PRIMEIRO REGISTROS





