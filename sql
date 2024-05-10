use oscar_database;
-- 1- Quantas vezes Natalie Portman foi indicada ao Oscar?
-- Foi indicada 3 vezes
select count(*) from filmes where nome_do_indicado = "Natalie Portman";

-- 2- Quantos Oscars Natalie Portman ganhou?
-- Ganhou 1 vez
select count(*) from filmes where nome_do_indicado = "Natalie Portman" and vencedor = "Sim";

-- 3- Amy Adams já ganhou algum Oscar?
-- Foi indicada 6 vezes mas nunca ganhou
select * from filmes where nome_do_indicado = "Amy Adams" and vencedor = "Sim";

-- 4- A série de filmes Toy Story ganhou um Oscar em quais anos?
-- A série Toy Story foi indicada em 3 anos, mas não ganhou em nenhum
select * from filmes where nome_filme = "Toy Story" and vencedor = "Sim" ;

-- 5- A partir de que ano que a categoria "Actress" deixa de existir? 
-- A partit de 1977
select * from filmes where categoria = "actress" order by ano_filmagem desc limit 1;

-- 6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
-- O primiero oscar de melhor atriz foi para a Louise Dresser no ano de 1928
select * from filmes where categoria = "actress" order by ano_cerimonia asc limit 1;

-- 7- Na coluna/campo "Vencedor", altere todos os valores com "Sim" para 1 e todos os valores "Não" para 0.
update filmes set vencedor = 1 where vencedor = "Sim";
update filmes set vencedor = 0 where vencedor = "Não";
select * from filmes;

-- 8- Em qual edição do Oscar "Crash" concorreu ao Oscar?
-- "Crash" concorreu ao Oscar na edição 78
select * from filmes where nome_filme = "Crash";

-- 9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
insert into filmes(
nome_filme, ano_filmagem, nome_do_indicado)
values ("Ta chovendo hamburguer", "2009", "Phil Lord" );
select * from filmes;

-- 10 O filme "Central do Brasil" aparece no Oscar?
-- Não aparece nessa tabelo do Oscar
select * from filmes where nome_filme = "Central do Brasil";

-- 11- Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser. 
insert into filmes(
nome_filme, ano_filmagem, nome_do_indicado)
values("Whiplach", "2014", " Damien Chazelle");
insert into filmes(
nome_filme, ano_filmagem, nome_do_indicado)
values("Cidade de Deus", "2002", " Fernando Meirelles");
insert into filmes(
nome_filme, ano_filmagem, nome_do_indicado)
values("A chegada", "2016", "Denis Villeneuve");
select * from filmes;

-- 12- Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
-- No ano em que eu nasci o melhor filme foi "Crash"; Não teve indicação de Melhor Atriz; e o Melhor Diretor foi Ang Lee.
select * from filmes where ano_cerimonia = "2006" and categoria = "Film editing" and vencedor = 1;
select * from filmes where ano_cerimonia = "2006" and categoria = "actress" and vencedor = 1;
select * from filmes where ano_cerimonia = "2006" and categoria = "Directing" and vencedor = 1;
