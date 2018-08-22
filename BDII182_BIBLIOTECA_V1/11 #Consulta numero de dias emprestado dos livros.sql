#Consulta numero de dias emprestado dos livros

use BDII182_BIBLIOTECA;

select USUARIOS.ID, NOME, TIPO_USUARIO, LIVROS.ID, TITULO,
CATEGORIA, DATA_EMPRESTIMO, DATA_DEVOLUCAO,
current_date() as 'Data Atual',
to_days(now()) - to_days(DATA_EMPRESTIMO) as 'Dias Emprestados'
from LIVROS
inner join USUARIOS
on USUARIOS.ID = LIVROS.ID
where DATA_DEVOLUCAO is not null and DATA_EMPRESTIMO is not null;
