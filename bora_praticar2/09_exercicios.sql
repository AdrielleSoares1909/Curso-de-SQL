

---Listar todas as transações adicionando uma coluna nova
--sinalizando “alto”, “médio” e “baixo”
--para o valor dos pontos [<10 ; <500; >=500]

SELECT IdCliente,
       QtdePontos,
       CASE
            WHEN QtdePontos >= 500 THEN 'Valor alto'
            WHEN QtdePontos < 500 THEN 'Valor medio'
            WHEN QtdePontos <10 THEN 'Valor baixo'
        END AS NomeGrupo

FROM transacoes

WHERE NomeGrupo = 'Valor alto'

ORDER BY QtdePontos DESC