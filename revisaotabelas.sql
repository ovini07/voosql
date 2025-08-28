#criar bancos de dados
create database apple;
create database google;
#excluir banco de dados
drop database apple;

use google;
#Criar tabelas
create table cliente(
codigo integer primary key auto_increment,
nome varchar(50),
telefone varchar(15));

create table usuarios(
iduser integer primary key auto_increment,
usuario varchar(50),
login varchar(20),
senha varchar(20),
perfil varchar(20)
);
	
create table pessoa(
id integer primary key auto_increment,
bi varchar(45),
nome varchar(45),
dat_nasc date,
telefone varchar(45),
email varchar(45),
morada varchar(45)
);

create table funcionarios(
idfunc integer,
nome varchar(50),
registro integer primary key auto_increment,
guerra varchar(20),
gerencia varchar(20),
det varchar(20),
turno varchar(10),
cargo varchar(30),
atividade varchar(50),
funcao varchar(30),
vinculo varchar(30),
situacao varchar(30)
);

create table produtos(
	codigo integer primary key auto_increment,
    nome varchar(50),
    preco decimal(10,0)
);

create table pedidos(
codigo integer primary key auto_increment,
quantidade integer,
codigo_prod integer,
foreign key (codigo_prod) references produtos(codigo));