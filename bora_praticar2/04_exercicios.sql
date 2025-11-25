

--Lista de clientes com 100 a 200 pontos (inclusive ambos);

SELECT IdCliente,
       QtdePontos

FROM clientes

-- PEGA TODOS IGUAL OU MAIOR QUE 100 E TBM O MENOR E IGUAL A 200
WHERE QtdePontos  >= 100 AND QtdePontos <=200  
