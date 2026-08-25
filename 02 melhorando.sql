create database if not exists clinica_helo
default character set utf8mb4
collate utf8mb4_0900_ai_ci;
use clinica_helo;

create table if not exists paciente(
id int primary key auto_increment,
nome varchar(30) not null,
data_nascimento date,
altura decimal(3,2),
status_cadastro boolean,
genero enum ('M','F','OUTRO')
)character set utf8mb4;
desc cliente;

create table if not exists medico(
id int primary key auto_increment,
nome varchar(30)
) character set utf8mb4;
desc medico;

create table if not exists consulta(
id int primary key auto_increment,
data_time datetime,
id_paciente int,
id_medico int,
foreign key (id_paciente) references paciente(id),
foreign key (id_medico) references medico(id)

) character set utf8mb4;
desc consulta;

