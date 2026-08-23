--- Script SQL para criação do banco de dados EscolaDB e suas tabelas

CREATE DATABASE EscolaDB;
USE EscolaDB;

CREATE TABLE Escola (
    id_escola INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150)
);

CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    id_escola INT NOT NULL,

    FOREIGN KEY (id_escola)
        REFERENCES Escola(id_escola)
);

CREATE TABLE Professor (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_escola INT NOT NULL,

    FOREIGN KEY (id_escola)
        REFERENCES Escola(id_escola)
);

CREATE TABLE Disciplina (
    id_disciplina INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_professor INT NOT NULL,

    FOREIGN KEY (id_professor)
        REFERENCES Professor(id_professor)
);

CREATE TABLE Matricula (
    id_matricula INT PRIMARY KEY,
    numero_matricula VARCHAR(20) NOT NULL,
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,

    FOREIGN KEY (id_aluno)
        REFERENCES Aluno(id_aluno),

    FOREIGN KEY (id_disciplina)
        REFERENCES Disciplina(id_disciplina)
);

-- Inserção de dados de alunos e professores

USE EscolaDB;

INSERT INTO Escola (id_escola, nome, endereco)
VALUES
(1, 'E.E João Limeira', 'Rua Souza Moreira, 155');

INSERT INTO Aluno (id_aluno, nome, idade, id_escola)
VALUES
(1, 'João Vitor', 16, 1),
(2, 'Eduarda Leme', 17, 1),
(3, 'Marcos Oliveira', 16, 1);

INSERT INTO Professor (id_professor, nome, id_escola)
VALUES
(1, 'Fernando Moura', 1),
(2, 'Ana Silva', 1);

INSERT INTO Disciplina (id_disciplina, nome, id_professor)
VALUES
(1, 'Matemática', 1),
(2, 'Português', 2);

INSERT INTO Matricula
(id_matricula, numero_matricula, id_aluno, id_disciplina)
VALUES
(1, '2026001', 1, 1),
(2, '2026002', 1, 2),
(3, '2026003', 2, 1),
(4, '2026004', 3, 2);