CREATE DATABASE pw_Hack;
USE pw_Hack;
CREATE TABLE TB_PERIODOS(
Id int identity primary key not null,
Nome varchar(50) not null
);
CREATE TABLE TB_CURSOS
(
	Id int identity primary key not null,
	Nome varchar(100),
	PeriodoId int not null,
	foreign key(PeriodoId) references TB_PERIODOS(Id)
);

CREATE TABLE TB_ALUNOS(
Id int identity primary key not null,
Nome varchar(50) not null,
CursoId int ,
foreign key(CursoId) references TB_CURSOS (Id)
);
INSERT INTO TB_PERIODOS
(Nome) 
VALUES('Noite');

INSERT INTO TB_CURSOS
(Nome) 
VALUES('ADS',1);

INSERT INTO TB_ALUNOS (Nome, CursoId)
VALUES('Yumi',1);
INSERT INTO TB_ALUNOS (Nome, CursoId)
VALUES('Shibata',1);
INSERT INTO TB_ALUNOS (Nome, CursoId)
VALUES('Guilherme',1);
INSERT INTO TB_ALUNOS (Nome, CursoId)
VALUES('Debora',1);

SELECT a.Nome, c.Nome 
FROM TB_ALUNOS a inner join TB_CURSOS c
on a.CursoId = c.Id
