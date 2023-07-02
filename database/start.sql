CREATE TABLE desenvolvedores(
    MATRICULA TEXT PRIMARY KEY NOT NULL,
    NOME      TEXT NOT NULL,
    SENHA     TEXT NOT NULL,
    TELEFONE  TEXT NOT NULL
);

CREATE TABLE testes(
    CODIGO_TESTE            TEXT PRIMARY KEY NOT NULL,
    NOME              TEXT NOT NULL,
    CLASSE            TEXT NOT NULL,
    MATRICULA_CRIADOR TEXT,
    FOREIGN KEY(MATRICULA_CRIADOR) REFERENCES desenvolvedores(MATRICULA)
);

CREATE TABLE casos_teste(
    CODIGO_CASO_TESTE    TEXT  PRIMARY KEY NOT NULL,
    DATA      TEXT NOT NULL,
    NOME      TEXT NOT NULL,
    ACAO      TEXT NOT NULL,
    RESPOSTA  TEXT NOT NULL,
    RESULTADO TEXT NOT NULL,
    CODIGO_TESTE_ASSOCIADO TEXT,
    FOREIGN KEY(CODIGO_TESTE_ASSOCIADO) REFERENCES testes(CODIGO)
);

-- Desenvolvedores

INSERT INTO desenvolvedores VALUES ("1234566","texto para fins test", "AmO2@&", "+1234567");

-- Testes

INSERT INTO testes VALUES ("ABC123", "texto para fins test", "UNIDADE", "1234566");


-- Casos Teste

INSERT INTO casos_teste VALUES ("ABC001", "01/JAN/2023", "texto para fins test", "texto para fins test", "texto para fins test", "APROVADO", "ABC123");