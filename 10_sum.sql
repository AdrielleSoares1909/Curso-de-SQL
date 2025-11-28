-- FUNCAO SUM - criou uma coluna para cada,e somou tudo que for positivo e tudo que for negativo

SELECT
      sum(QtdePontos),

       sum(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
       END)AS QtdePontosPositivos,

       sum(CASE
            WHEN QtdePontos < 0 THEN QtdePontos
       END)AS QtdePontosNegativos,

     count(CASE
            WHEN QtdePontos < 0 THEN QtdePontos
       END)AS QtdetrasacaoNegativas





FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'


ORDER BY QtdePontos