WITH tb_cklientes_d1 as (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE DATE(DtCriacao) = '2025-08-25'
    
),

tb_join as (

    SELECT DATE(t2.DtCriacao) as dtDia,
        COUNT(DISTINCT t1.IdCliente) as qtdCliente,
        1 - 1. * COUNT(DISTINCT t1.IdCliente) / (SELECT COUNT(*) FROM tb_cklientes_d1) as txChurn
    FROM tb_cklientes_d1 as t1

    LEFT JOIN transacoes as t2
        ON t1.IdCliente = t2.IdCliente
        
    WHERE t2.DtCriacao >= '2025-08-25'
    AND t2.DtCriacao < '2025-08-30'

    GROUP BY dtDia)

SELECT *
FROM tb_join