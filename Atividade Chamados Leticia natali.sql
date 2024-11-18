create database atividade_pratica_leticia_natali;

use atividade_pratica_leticia_natali;

create table clientes (
    id_clientes int primary key not null auto_increment,
    nome_clientes varchar(100) not null,
    email_clientes varchar(100) not null,
    telefone_clientes varchar(14) not null
);

create table colaboradores (
    id_colaboradores int primary key not null auto_increment,
    nome_colaboradores varchar(100) not null,
    email_colaboradores varchar(100) not null,
    telefone_colaboradores varchar(14)
);

create table chamados (
    id_chamados int primary key not null auto_increment,
    descrição_do_problema varchar(1000) not null,
    criticidade_chamados enum('baixa', 'media', 'alta'),
    status_chamados enum('aberto', 'em andamento', 'resolvido'),
    data_de_abertura_chamados datetime,
	primary key (id_clientes),
    foreign key (id_clientes) references clientes(id_clientes),
    primary key (id_colaboradores),
    foreign key (id_colaboradores) references colaboradores(id_colaboradores)
);

insert into clientes (nome_clientes, email_clientes, telefone_clientes)
values ('Leticia Natali', 'leticianatali@gmail.com', '98888-7777');

select * from colaboradores;

insert into colaboradores (nome_colaboradores, email_colaboradores, telefone_colaboradores)
values ('Luis Rodrigo Natali', 'luisrnatali@gmail.com', '97777-8888');

insert into chamados (descrição_do_problema, criticidade_chamados, status_chamados, data_de_abertura_chamados)
values ('Blablablablabalabjsakahcolgfco.', 'media', 'aberto', '2024-11-18 12:05:00');

