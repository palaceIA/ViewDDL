/*Criar uma view livros_mais_recentes que liste os livros publicados depois de 
1950 com seus autores.*/

create view "livros_mais_recentes" as 
select
	a.nome as "Autor" , 
	l.titulo as "Livro publicado" , 
	l.ano_publicacao as "Livros depois de 1950" 
from livro l 
join autor a on a.id=l.id_autor 
where l.ano_publicacao > 1950