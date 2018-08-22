#Consulta Multa 0,50_dia por atraso livros não devolvidos no ŕazo de 10 dias
use bdii182_biblioteca;
select NOME, TIPO_USUARIO, TITULO, CATEGORIA, DATA_EMPRESTIMO,
DATA_DEVOLUCAO, current_date() 'DATA ATUAL',
to_days(now()) - to_days(DATA_EMPRESTIMO) as 'DIAS EMPRESTADO',
to_days(now()) - to_days(DATA_EMPRESTIMO) - 10 as 'DIAS ATRASADO',
format(0.5 * ((to_days(now()) - to_days(DATA_EMPRESTIMO)) - 10),2) as 'MULTA'
from USUARIOS
inner join LIVROS
on USUARIOS.ID = USUARIO_ID
where ((to_days(now()) - to_days(DATA_EMPRESTIMO)) - 10) > 0
and DATA_DEVOLUCAO is null and DATA_EMPRESTIMO is not null;