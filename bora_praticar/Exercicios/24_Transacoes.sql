WITH transacoe_diarias AS (
    SELECT 
        DATE(DtCriacao) AS DataTransacao,
        COUNT(IdTransacao) AS TotalTransacoes
    FROM transacoes
    GROUP BY DATE(DtCriacao)
    ORDER BY DataTransacao
)

SELECT *,
    SUM(TotalTransacoes) OVER (ORDER BY DataTransacao) AS SomaDias
FROM transacoe_diarias;