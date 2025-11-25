
SELECT idCliente,

        QtdePontos,

        QtdePontos + 10 AS QtdePontosPlus10,

        DtCriacao,

        substr(DtCriacao, 1, 19) AS dtSubString,

        datetime( substr(DtCriacao, 1, 19)) AS dtCriacaoNova,

        strftime('%w', datetime( substr(DtCriacao, 1, 19))) AS diaSemana

FROM clientes 