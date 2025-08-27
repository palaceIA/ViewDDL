/*Criar uma view emprestimos_em_aberto que mostre todos os empréstimos que 
ainda não têm data de devolução. */


create view "emprestimo_em_aberto" as 
select  l.titulo,e.data_devolucao 
FROM emprestimo e
join livro l on l.id = e.id_livro 
WHERE data_devolucao IS NUL