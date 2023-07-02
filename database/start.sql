CREATE TABLE desenvolvedores(
    MATRICULA INT  PRIMARY KEY NOT NULL,
    NOME      TEXT NOT NULL,
    SENHA     TEXT NOT NULL,
    TELEFONE  TEXT NOT NULL
);

CREATE TABLE testes(
    CODIGO            INT  PRIMARY KEY NOT NULL,
    NOME              TEXT NOT NULL,
    CLASSE            TEXT NOT NULL,
    MATRICULA_CRIADOR INT,
    FOREIGN KEY(MATRICULA_CRIADOR) REFERENCES desenvolvedores(MATRICULA)
);

CREATE TABLE casos_teste(
    CODIGO    INT  PRIMARY KEY NOT NULL,
    DATA      TEXT NOT NULL,
    NOME      TEXT NOT NULL,
    ACAO      TEXT NOT NULL,
    RESPOSTA  TEXT NOT NULL,
    RESULTADO TEXT NOT NULL,
    CODIGO_TESTE_ASSOCIADO INT,
    FOREIGN KEY(CODIGO_TESTE_ASSOCIADO) REFERENCES testes(CODIGO)
);

-- Desenvolvedores

INSERT INTO desenvolvedores VALUES ('1234566','desenvolvedor1', '123456', '+1234567');
INSERT INTO desenvolvedores VALUES ('5439823','desenvolvedor2', '123456', '+1234567');
INSERT INTO desenvolvedores VALUES ('2023141','desenvolvedor3', '123456', '+1234567');
INSERT INTO desenvolvedores VALUES ('7985435','desenvolvedor4', '123456', '+1234567');
INSERT INTO desenvolvedores VALUES ('9216342','desenvolvedor5', '123456', '+1234567');

-- Testes

INSERT INTO testes VALUES ('ABC123', 'Texto1', 'UNIDADE', '1234566');
INSERT INTO testes VALUES ('XYZ789', 'Texto2', 'INTEGRACAO', '5439823');
INSERT INTO testes VALUES ('DEF456', 'Texto3', 'FUMACA', '2023141');
INSERT INTO testes VALUES ('GHI789', 'Texto4', 'SISTEMA', '7985435');
INSERT INTO testes VALUES ('JKL012', 'Texto5', 'REGRESSAO', '9216342');
INSERT INTO testes VALUES ('MNO345', 'Texto6', 'ACEITACAO', '1234566');
INSERT INTO testes VALUES ('PQR678', 'Texto7', 'UNIDADE', '5439823');
INSERT INTO testes VALUES ('STU901', 'Texto8', 'INTEGRACAO', '2023141');
INSERT INTO testes VALUES ('VWX234', 'Texto9', 'FUMACA', '7985435');
INSERT INTO testes VALUES ('YZA567', 'Texto10', 'SISTEMA', '9216342');
INSERT INTO testes VALUES ('BCD234', 'Texto11', 'ACEITACAO', '1234566');
INSERT INTO testes VALUES ('EFG567', 'Texto12', 'UNIDADE', '5439823');
INSERT INTO testes VALUES ('HIJ890', 'Texto13', 'INTEGRACAO', '2023141');
INSERT INTO testes VALUES ('KLM123', 'Texto14', 'FUMACA', '7985435');
INSERT INTO testes VALUES ('NOP456', 'Texto15', 'SISTEMA', '9216342');

-- Casos Teste

INSERT INTO casos_teste VALUES ('ABC001', '01/JAN/2023', 'Teste1', 'Acao1', 'Resposta1', 'APROVADO', 'ABC123');
INSERT INTO casos_teste VALUES ('DEF002', '02/JAN/2023', 'Teste2', 'Acao2', 'Resposta2', 'REPROVADO', 'XYZ789');
INSERT INTO casos_teste VALUES ('GHI003', '03/JAN/2023', 'Teste3', 'Acao3', 'Resposta3', 'APROVADO', 'DEF456');
INSERT INTO casos_teste VALUES ('JKL004', '04/JAN/2023', 'Teste4', 'Acao4', 'Resposta4', 'REPROVADO', 'GHI789');
INSERT INTO casos_teste VALUES ('MNO005', '05/JAN/2023', 'Teste5', 'Acao5', 'Resposta5', 'APROVADO', 'JKL012');
INSERT INTO casos_teste VALUES ('PQR006', '06/JAN/2023', 'Teste6', 'Acao6', 'Resposta6', 'REPROVADO', 'MNO345');
INSERT INTO casos_teste VALUES ('STU007', '07/JAN/2023', 'Teste7', 'Acao7', 'Resposta7', 'APROVADO', 'PQR678');
INSERT INTO casos_teste VALUES ('VWX008', '08/JAN/2023', 'Teste8', 'Acao8', 'Resposta8', 'REPROVADO', 'STU901');
INSERT INTO casos_teste VALUES ('YZA009', '09/JAN/2023', 'Teste9', 'Acao9', 'Resposta9', 'APROVADO', 'VWX234');
INSERT INTO casos_teste VALUES ('BCD010', '10/JAN/2023', 'Teste10', 'Acao10', 'Resposta10', 'REPROVADO', 'YZA567');
INSERT INTO casos_teste VALUES ('EFG011', '11/JAN/2023', 'Teste11', 'Acao11', 'Resposta11', 'APROVADO', 'BCD234');
INSERT INTO casos_teste VALUES ('HIJ012', '12/JAN/2023', 'Teste12', 'Acao12', 'Resposta12', 'REPROVADO', 'EFG567');
INSERT INTO casos_teste VALUES ('KLM013', '13/JAN/2023', 'Teste13', 'Acao13', 'Resposta13', 'APROVADO', 'HIJ890');
INSERT INTO casos_teste VALUES ('NOP014', '14/JAN/2023', 'Teste14', 'Acao14', 'Resposta14', 'REPROVADO', 'KLM123');
INSERT INTO casos_teste VALUES ('ABC015', '15/JAN/2023', 'Teste15', 'Acao5', 'Resposta15', 'APROVADO', 'NOP456');
INSERT INTO casos_teste VALUES ('DEF016', '16/JAN/2023', 'Teste16', 'Acao16', 'Resposta16', 'REPROVADO', 'ABC123');
INSERT INTO casos_teste VALUES ('GHI017', '17/JAN/2023', 'Teste17', 'Acao17', 'Resposta17', 'APROVADO', 'XYZ789');
INSERT INTO casos_teste VALUES ('JKL018', '18/JAN/2023', 'Teste18', 'Acao18', 'Resposta18', 'REPROVADO', 'DEF456');
INSERT INTO casos_teste VALUES ('MNO019', '19/JAN/2023', 'Teste19', 'Acao19', 'Resposta19', 'APROVADO', 'GHI789');
INSERT INTO casos_teste VALUES ('PQR020', '20/JAN/2023', 'Teste20', 'Acao20', 'Resposta20', 'REPROVADO', 'JKL012');
INSERT INTO casos_teste VALUES ('STU021', '21/JAN/2023', 'Teste21', 'Acao21', 'Resposta21', 'APROVADO', 'MNO345');
INSERT INTO casos_teste VALUES ('VWX022', '22/JAN/2023', 'Teste22', 'Acao22', 'Resposta22', 'REPROVADO', 'PQR678');
INSERT INTO casos_teste VALUES ('YZA023', '23/JAN/2023', 'Teste23', 'Acao23', 'Resposta23', 'APROVADO', 'STU901');
INSERT INTO casos_teste VALUES ('BCD024', '24/JAN/2023', 'Teste24', 'Acao24', 'Resposta24', 'REPROVADO', 'VWX234');
INSERT INTO casos_teste VALUES ('EFG025', '25/JAN/2023', 'Teste25', 'Acao25', 'Resposta25', 'APROVADO', 'YZA567');
INSERT INTO casos_teste VALUES ('HIJ026', '26/JAN/2023', 'Teste26', 'Acao26', 'Resposta26', 'REPROVADO', 'BCD234');
INSERT INTO casos_teste VALUES ('KLM027', '27/JAN/2023', 'Teste27', 'Acao27', 'Resposta27', 'APROVADO', 'EFG567');
INSERT INTO casos_teste VALUES ('NOP028', '28/JAN/2023', 'Teste28', 'Acao28', 'Resposta28', 'REPROVADO', 'HIJ890');
INSERT INTO casos_teste VALUES ('ABC029', '29/JAN/2023', 'Teste29', 'Acao29', 'Resposta29', 'APROVADO', 'KLM123');
INSERT INTO casos_teste VALUES ('DEF030', '30/JAN/2023', 'Teste30', 'Acao30', 'Resposta30', 'REPROVADO', 'NOP456');