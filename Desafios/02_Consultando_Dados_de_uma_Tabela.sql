--Desafio: resolvendo express�es l�gicas

CREATE TABLE ALUNO 
(
MATRICULA INT IDENTITY(1,1) PRIMARY KEY,
NOME VARCHAR(50) NOT NULL,
IDADE INT NOT NULL,
FORMACAO VARCHAR(50) NOT NULL
);

INSERT INTO ALUNO
VALUES
('Fulano', 17, 'Alem�o');

INSERT INTO ALUNO
VALUES
('Beltrano', 18, 'Alem�o');

INSERT INTO ALUNO
VALUES
('Sicrano', 17, 'Ingl�s');

SELECT *, 
(CASE WHEN IDADE >= 18 OR FORMACAO = 'Ingl�s' THEN 'Estudos Astron�micos' 
      WHEN IDADE < 18 AND FORMACAO = 'Alem�o'  THEN 'Estudos Supers�nicos' 
      ELSE 'Aluno n�o passou nos requisitos.' END) AS CLASSIFICACAO 
FROM ALUNO; 
