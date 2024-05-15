use avaliacao_22a;

select * from livros;

# 1
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) 
VALUES ('As crônicas de Nárnia', 'C.S. lewis', '1950', 'disponível', 'fantasia', '978-0064471190', 'HarperCollins', '768', 'francês');

# 2
update livros
set disponivel = false
where ano_publicacao < 1980;

# 3
update livros
set editora = 'Plume Books'
where titulo = 1984;

# 4
delete from livros
where idioma = 'inglês' and ano_publicacao < 2000;

# 5
select * from livros
where quantidade_paginas > 650;

# 6
select * from livros
group by categoria;

# 7
select * from livros
limit 5 ;

# 8
select avg(quantidade_paginas) from livros;

# 9
select * from livros
order by ano_publicacao desc;

# 10
select *from livros
where titulo = 'S$' and ano_publicacao between 1975 and 1990;