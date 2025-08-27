/*Criar uma view usuarios_com_mais_de_um_emprestimo que mostre os 
usuários que já emprestaram mais de 1 livro.*/

select 
	u.nome as "Nome do usuário" , 
	count(e.id) as "Mais de 1 livro"
from emprestimo e 
join usuario u on u.id=e.id_usuario 
group by u.nome
having count(e.id) > 1