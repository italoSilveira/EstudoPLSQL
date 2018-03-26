SELECT * FROM TBL_ALUNO;


SELECT CIDADE FROM TBL_ALUNO;


SELECT DISTINCT CIDADE AS Cidade
FROM TBL_ALUNO;


SELECT TOTAL - Nvl(DESCONTO,0) AS "Total com desconto" FROM TBL_CONTRATO;
--Caso tenha a possibilidade do campo ser nulo, sempre usar Nvl(Campo Nulo, Valor que irá substituir)--


SELECT TOTAL || '-' || Nvl(DESCONTO,0) || ' = '  || (TOTAL - Nvl(DESCONTO,0)) AS "Total com desconto"
FROM TBL_CONTRATO;
--Para concatenar sar o ||--


SELECT * FROM TBL_ALUNO
WHERE NOME LIKE 'Fernanda%';


SELECT * FROM TBL_ALUNO
WHERE NOME LIKE '%Henrique';

SELECT * FROM TBL_CONTRATO
WHERE DATA <> SYSDATE;