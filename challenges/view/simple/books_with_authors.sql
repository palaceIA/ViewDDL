/*Criar uma view livros_com_autores que mostre o título do livro e o nome do autor.*/

create view "livros_com_autores" as 
select l.titulo , a.nome 
from livro l 
join autor a on a.id = l.id_autor
