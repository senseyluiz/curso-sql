WITH tb_cliente_semana AS (
    SELECT idCliente,
        DATE(DtCriacao) AS DataCriacao,
        COUNT(IdTransacao) AS TotalTransacoes,
        strftime('%w',DATETIME(DtCriacao)) as DiaSemana
    FROM transacoes
    GROUP BY idCliente, DiaSemana
    
),

tb_ranking_dia AS (

    SELECT *,
        CASE 
            WHEN DiaSemana = '0' THEN 'Domingo'
            WHEN DiaSemana = '1' THEN 'Segunda-feira'
            WHEN DiaSemana = '2' THEN 'Terça-feira'
            WHEN DiaSemana = '3' THEN 'Quarta-feira'
            WHEN DiaSemana = '4' THEN 'Quinta-feira'
            WHEN DiaSemana = '5' THEN 'Sexta-feira'
            WHEN DiaSemana = '6' THEN 'Sábado'
        END AS NomeDiaSemana,
        ROW_NUMBER() OVER (PARTITION BY idCliente ORDER BY TotalTransacoes DESC )  AS RankingDia
    FROM tb_cliente_semana

)

SELECT * FROM tb_ranking_dia
WHERE RankingDia = 1