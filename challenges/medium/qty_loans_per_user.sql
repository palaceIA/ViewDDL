/*Criar uma view qtd_emprestimos_por_usuario que mostre quantos livros cada 
usuário já emprestou.*/

create view "qtd_emprestimos_por_usuario" as 
select 
	u.nome  as "Nome do usuário", 
	count(e.id) as "Qnt livros emprestados"
from emprestimo e 
join usuario u on u.id = e.id_usuario 
group by u.nome