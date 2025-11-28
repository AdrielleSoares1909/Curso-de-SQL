

SELECT avg(QtdePontos) AS mediaCarteira,

       1.*sum(QtdePontos) / count(idCliente) AS mediaCarteiraRoots, 

       min(QtdePontos) AS minCarteira,

       max(QtdePontos) AS maxCarteira,

       sum(flTwitch),

       sum(flEmail)

FROM clientes