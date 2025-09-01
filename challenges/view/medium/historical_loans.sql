/*Criar uma view historico_emprestimos que traga: nome do usuário, título do 
livro, autor e data de empréstimo*/

create view "historico_emprestimos " as
select 
	u.nome as "Nome do usuário" , 
	l.titulo as "Titulo do livro" , 
	a.nome as "Nome do autor" , 
	e.data_emprestimo as "Data de empréstimo"
from emprestimo e 
join usuario u on u.id = e.id_usuario 
join livro l on l.id = e.id_livro 
join autor a on a.id = l.id_autor 
