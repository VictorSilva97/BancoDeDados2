#Inserir os campos Data de empréstimo e Data de Devolução na tabela livros

use bdii182_biblioteca;

alter table LIVROS add DATA_EMPRESTIMO date null;
alter table LIVROS add DATA_DEVOLUCAO date null;
#select * from LIVROS;
