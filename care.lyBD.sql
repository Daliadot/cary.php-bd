create database care_ly;
use care_ly;

/*
DROP TABLE IF EXISTS admin;
DROP TABLE IF EXISTS formulario;
DROP TABLE IF EXISTS servicos;
DROP TABLE IF EXISTS instituicoes;
DROP TABLE IF EXISTS usuarios;
*/


create table usuarios (
cd_usuario int auto_increment primary key,
nm_usuario varchar (100) not null,
email varchar(250) not null unique,
senha varchar (20) not null unique,
cpf int (11) not null unique,
);

create table instituicoes (
cd_instituicao int auto_increment primary key,
nm_instituicao varchar (100) not null,
email_instintuicao varchar (250) not null unique,
senha varchar (20) not null unique,
descricao text,
endereco_instituicao varchar (300) not null,
telefone int (12)
);

CREATE TABLE servicos (
    cd_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    horas_servico FLOAT,
    cd_instituicao INT,
    FOREIGN KEY (cd_instituicao) REFERENCES instituicoes(cd_instituicao)
);

create table formulario(
	id_form int auto_increment primary key,
	status enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
    form_dataenvio date default (sysdate()),
    cd_instituicao INT,
    cd_usuario INT,
    FOREIGN KEY (cd_instituicao) REFERENCES instituicoes(cd_instituicao),
    FOREIGN KEY (cd_usuario) REFERENCES usuarios(cd_usuario)
    );
    
create table admin(
cd_admin int auto_increment primary key,
nm_admin varchar (200) not null,
email_admin varchar (250) not null unique,
senha varchar (20) not null unique
);


