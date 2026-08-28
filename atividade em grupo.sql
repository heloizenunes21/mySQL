create database if not exists  app_foodjoykids
default character set utf8mb4
collate utf8mb4_0900_ai_ci;


use app_foodjoykids;

create table if not exists categoria(
id int primary key auto_increment,
nome varchar(30)not null
) 
character set utf8mb4;

create table if not exists Usuarios (
    id_usuario  int primary key auto_increment,
    CPF_usuario varchar(14) not null,
    telefone varchar(20),
    Senha varchar(255) not null,
    isadim boolean
);
create table if not exists Ficha_medica (
    id_ficha int primary key auto_increment,
    Nome varchar(50) not null,
    Data_nascimento datetime,
    Tamanho_altura float,
    Peso_desejado float,
    Tempo_resultado datetime,
    Descricao varchar(255),
    idUsuarios int,
    Peso_atual float,
    foreign key (idUsuarios) references Usuarios(id_usuario)
);
create table if not exists Historico (
    id_historico int auto_increment,
    Acertos float,
    idFicha_medica int,
    primary key (idhistorico),
    foreign key (idFicha_medica)references Ficha_medica(id_ficha)
);create table if not exists Historico (
    id_historico int auto_increment,
    Acertos float,
    idFicha_medica int,
    primary key (idhistorico),
    foreign key (idFicha_medica)references Ficha_medica(id_ficha)
);
create table if not exists Quizziz (
    id_quizziz int primary key auto_increment,
    imagens varchar(255),
    idHistorico int,
    idCategorias int,
    foreign key (idHistorico) references Historico(id_historico),
    foreign key (idCategorias) references categoria(id)
);
create table if not exists Perguntas (
    id_perguntas int primary key auto_increment,
    idQuizziz int,
    foreign key (idQuizziz) references Quizziz(id_quizziz)
);