-- Criando Banco de dados 
create database loja_2c;
-- seleciona banco de dados 
use loja_2c;

-- criando tabelas
create table produto (
id_produto int primary key auto_increment,
nome varchar(30),
quantidade int,
valor decimal 
);