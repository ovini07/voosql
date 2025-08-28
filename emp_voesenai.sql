create database voesenai;

create table voo(
codigo integer primary key auto_increment,
companhia varchar(50),
destino varchar(50),
quantidade integer
);

create table passageiro(
codigo integer primary key auto_increment,
nome varchar(50),
codigo_voo integer,
foreign key (codigo_voo) references voo (codigo)
);