SELECT
    DATE(DtCriacao) AS DataCriacao,
    AVG(qtdePontos) AS ValorMedioPositivo,
    COUNT(qtdePontos) AS TotalRegistros
FROM transacoes
GROUP BY DATE(DtCriacao)
HAVING qtdePontos > 0;

-- select * from transacoes