--Desafio: resolvendo expressões lógicas

CREATE TABLE ALUNO 
(
MATRICULA INT IDENTITY(1,1) PRIMARY KEY,
NOME VARCHAR(50) NOT NULL,
IDADE INT NOT NULL,
FORMACAO VARCHAR(50) NOT NULL
);

INSERT INTO ALUNO
VALUES
('Fulano', 17, 'Alemão');

INSERT INTO ALUNO
VALUES
('Beltrano', 18, 'Alemão');

INSERT INTO ALUNO
VALUES
('Sicrano', 17, 'Inglês');

SELECT *, 
(CASE WHEN IDADE >= 18 OR FORMACAO = 'Inglês' THEN 'Estudos Astronômicos' 
      WHEN IDADE < 18 AND FORMACAO = 'Alemão'  THEN 'Estudos Supersônicos' 
      ELSE 'Aluno não passou nos requisitos.' END) AS CLASSIFICACAO 
FROM ALUNO; 
