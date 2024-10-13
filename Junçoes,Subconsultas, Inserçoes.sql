-- Junção: permite que se combine e recupere dados de mais de uma tabela  em uma unica consulta
-- resultado continua sendo conjunto de tuplas, campos retornados podem vir de mais de uma tabela, uma das operações mais importantes de um banco de dados

Select lista de campos From Tabela, Tabela
Where restrição and Condição de Junção

Select Unidade.nome, Continente from Unidade, Pais
Where Unidade.nome = 'Nordrhein-Westfalen'
and Pais = Pais.nome
-- 
Select Continent, P.nome, count(*) as Total
from Unidade U, Pais P
where U.Pais = P.nome
group by Continente, P.nome 
having sum(habitantes) > 5.000.000
order by Continent, Count(*)

-- Subconsultas: 

Select continente from pais
where nome = (select pais from unidade
where nome = 'Nordrhein-Westfalen')
            
-- Inserções: insere mais uma tupla na tabela, com os valores especificados para cada campo na respectiva ordem em que aparecem 
Insert into tabela (lista de campos)
values (lista de valores)

Insert into Pais(nome, capital, continente)
Values ('Espanha', 'Madri', 'Europa')       

--Alterações: 

Update tabela
Set Campo = Expressao
Where Restrição

Update Unidade Set habitantes = 16.000.000
Where Nome = 'Rio de Janeiro'

-- Deletar:

Delete from tabela
Where Restrição

Delete from Unidade
Where nome = 'Rio de Janeiro'

-- Remoções: Remove tuplas que satisfazerem a expressão da restrição, se não houver restrição todas as tuplas serão modificadas

Delete from Pais
Where nome = 'Portugal'

-- Índices: Estruturas de dados usadas apenas para acelerar consultas

Create index Nome do index
On Tabela (Lista de Campos

--

create index pais_idx on unidade(pais, nome));