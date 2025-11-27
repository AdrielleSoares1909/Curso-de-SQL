-- INTERVALOS
-- DE 0 A 500 --> PONEI
-- DE 501 A 1000 --> PONEI PREMIUM
-- 1001 A 5000 --> MAGO APRENDIZ
-- 5000 A 10000 --> MAGO MESTRE
-- +10001 --> MAGO SUPREMO

--->>>  CADA CASE GERA UMA NOVA COLUNA << ----
SELECT IdCliente,
       QtdePontos,
       CASE
            WHEN QtdePontos <= 500 THEN 'PONEI'
            WHEN  QtdePontos <= 1000 THEN 'PONEI PREMIUM'
            WHEN QtdePontos <= 5000 THEN 'MAGO APRENDIZ'
            WHEN QtdePontos <= 10000 THEN 'MAGO MESTRE'
            ELSE 'MAGO SUPREMO'
        END AS NomeGrupo,

        CASE
            WHEN QtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flponei,

        CASE 
            WHEN QtdePontos > 1000 THEN 1
            ELSE 0
        END AS flmago

FROM clientes

ORDER BY QtdePontos DESC