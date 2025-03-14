create database care_ly;
use care_ly;

create table usuarios (
CD_usuario int auto_increment primary key,
NM_usuario varchar (100) not null,
emai varchar(250) not null unique,
senha varchar (10) not null unique,
cpf int (10) not null unique
);

create table instituicoes (
CD_instituicao int auto_increment primary key,
NM_instituicao varchar (100) not null,
email_instintuicao varchar (250) not null unique,
senha varchar (10) not null unique,
descricao text,
endereco_instituicao varchar (300) not null,
telefone int (12)
);

CREATE TABLE servicos (
    CD_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    horas_servico FLOAT,
    CD_instituicao INT,
    FOREIGN KEY (CD_instituicao) REFERENCES instituicoes(CD_instituicao)
);

create table formulario(
	ID_form int auto_increment primary key,
	status enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
    CD_instituicao INT,
    CD_usuario INT,
    FOREIGN KEY (CD_instituicao) REFERENCES instituicoes(CD_instituicao),
    FOREIGN KEY (CD_usuario) REFERENCES usuarios(CD_usuario)
    );
    