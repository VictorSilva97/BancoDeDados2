#Consulta numero de dias emprestado dos livros
use bdii182_biblioteca;

select USUARIOS.ID, NOME, TIPO_USUARIO, LIVROS.ID, TITULO,
CATEGORIA, DATA_EMPRESTIMO, DATA_DEVOLUCAO,
to_days(DATA_DEVOLUCAO) - to_days(DATA_EMPRESTIMO) as 'Dias Emprestados', (to_days(DATA_DEVOLUCAO) - to_days(DATA_EMPRESTIMO))*0.50 as 'Multa' 
from LIVROS
inner join USUARIOS
on USUARIOS.ID = LIVROS.ID
where DATA_DEVOLUCAO is not null and DATA_EMPRESTIMO is not null;

