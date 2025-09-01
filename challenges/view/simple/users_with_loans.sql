/*Criar uma view usuarios_com_emprestimos que mostre o nome do usuário e os títulos dos livros emprestados.*/

create view "users_with_loans" as 
select u.nome , l.titulo as "livros emprestados"
from emprestimo e  
join usuario u on u.id = e.id_usuario 
join livro l on l.id = e.id_livro 