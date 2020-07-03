create database condominio;

use condominio;

create table condominio (
	num integer not null auto_increment,
    nome varchar(100)  not null,
    endereco varchar(200) not null, 
    tipo char(1) not null,
    
    constraint pkcond primary key (num)
    );
  
  
  update tbl_usuario set linkfoto = "\images\raphael.jpg" where racf = "raphlun";
  
  drop table cliente;
  
  create table cliente (
    idcli integer not null auto_increment,
  nome varchar(80),
  email varchar(100) unique,
  telefone varchar(20) unique,
    constraint pkcli primary key (idcli)
    );
  
  drop table unidade;
create table unidade (
idunidade integer not null auto_increment,
numero integer not null,
complemento varchar(30),
valorcondominio float,
valoraluguel float,
num integer not null,
idcli integer not null,

constraint pk_unidade primary key (idunidade),
constraint fk_cond_uni foreign key (num) references condominio (num),
constraint fk_cli_uni foreign key (idcli) references cliente (idcli)
);

create table aluguel ( 
numcontrato integer not null auto_increment,
idcli integer not null,
iduni integer not null,
iniciovig date,
fimvig date,
valorefetivo float,

constraint pk_aluguel primary key (numcontrato),
constraint fk_aluguel_cli foreign key (idcli) references cliente(idcli),
constraint fk_aluguel_unidade foreign key (iduni) references unidade(idunidade)
);

show tables;

desc cliente;

insert into condominio values ( null, 'Vila 1', 'Rua A - 30', 'C');
insert into condominio values ( null, "Vila 2", 'Rua B - 40', 'A');
insert into condominio values ( null, 'Vila 3', 'Rua C - 50', 'E');

insert into cliente values	
	(null, 'Cliente A', 'ClienteA@email.com', '999999991');
	insert into  CLIENTE VALUES (null, 'Cliente B', 'ClienteB@email.com', '999999992');
	insert into  CLIENTE VALUES (null, 'Cliente C', 'ClienteC@email.com', '999999993');
	insert into  CLIENTE VALUES (null, 'Cliente D', 'ClienteD@email.com', '999999994');
	insert into  CLIENTE VALUES (null, 'Cliente E', 'ClienteE@email.com', '999999995');
	insert into  CLIENTE VALUES (null, 'Cliente F', 'ClienteF@email.com', '999999996');
	insert into  CLIENTE VALUES (null, 'Cliente J', 'ClienteJ@email.com', '999999997');
	insert into  CLIENTE VALUES (null, 'Cliente H', 'ClienteH@email.com', '999999998');
	insert into  CLIENTE VALUES (null, 'Cliente I', 'ClienteI@email.com', '999999999');
    
    truncate unidade;
    
    insert into unidade values (null, '10', 'CASA', 0, 500, 1, 1);
    insert into unidade values (null, '11', 'Sobrado', 0, 0, 1, 2);
    insert into unidade values (null, '12', 'CASA', 0, 1500, 1, 3);
    
    insert into unidade values (null, '100', '58', 660, 0, 2, 1);
    insert into unidade values (null, '101', '68', 530, 3000, 2, 2);
    insert into unidade values (null, '102', '78', 530, 1500, 2, 3);
    
    insert into unidade values (null, '1000', '1A - CJ 100', 1500, 0, 3, 1);
    insert into unidade values (null, '1001', '6A - CJ 606', 1500, 0, 3, 2);
    insert into unidade values (null, '1002', '11A - CJ 111', 1500, 1500, 3, 3);
    
    
    select * from unidade;
    
    select * from cliente where substring(nome, 1, 1) = 'n' order by nome

select * from condominio;
select * from cliente;

SHOW PROCESSLIST;

select * from tbl_usuario;

alter table tbl_usuario drop column setor;

select * from tbl_departamento;

INSERT INTO `projeto`.`tbl_departamento`
(`id`,
`unidade`,
`andar`,
`nome`,
`iddepto`,
`nomedepto`)
VALUES
(1, '30', '2', 'GER. DEV. CETIP AUTO', '1');



INSERT INTO `projeto`.`tbl_departamento`
(`iddepto`, `unidade`,
`andar`,
`nome`,
`iddepto`,
`nomedepto`)
VALUES
(null, '2', 'GERENCIA DE DESENV AUTO B3', '1', 'GDB3');

 update tbl_usuario set depto_iddepto = 1 where email = "lunabr@gmail.com";
  update tbl_usuario set depto_iddepto = 1 where email = "qbandrea@gmail.com";
drop table tbl_departamento;

INSERT INTO `projeto`.`tbl_usuario`
(`idusuario`, `email`, `linkfoto`, `nome`, `racf`, `senha`, `setor`)
VALUES
(null, 'lunabr@gmail.com', 'https://media-exp1.licdn.com/dms/image/C4D03AQFt0JZh07HpDQ/profile-displayphoto-shrink_200_200/0?e=1598486400&v=beta&t=KhjtFTQV4-nJ54SMMVunFBkZ9L311Ty1Ljc8Z8arjE8', 
'Raphael da Silva Luna', 'raphlun', '@Lele1892', 'Operação');

INSERT INTO `projeto`.`tbl_usuario`
(`idusuario`, `email`, `linkfoto`, `nome`, `racf`, `senha`, `setor`)
VALUES
(null, 'qbandrea@gmail.com', 'https://media-exp1.licdn.com/dms/image/C4D03AQEKYemkl-RHnw/profile-displayphoto-shrink_200_200/0?e=1598486400&v=beta&t=ATfiGTM1mrxieDTXMTy-2U06c2She7Us84vulKPEkjU', 
'Andrea Quesada', 'andqda', 'Jesus1802', 'Financeiro');