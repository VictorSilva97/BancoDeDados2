#Insere dados no campo data de emprestimo da tabela livros

use BDII182_BIBLIOTECA;

update LIVROS set DATA_EMPRESTIMO = '2018-07-18'
where LIVROS.ID = 1;
update LIVROS set DATA_EMPRESTIMO = '2018-04-15'
where LIVROS.ID = 2;
update LIVROS set DATA_EMPRESTIMO = '2018-04-20'
where LIVROS.ID = 3;
update LIVROS set DATA_EMPRESTIMO = '2018-04-25'
where LIVROS.ID = 4;

select * from LIVROS;




