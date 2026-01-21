SELECT IdCliente,
    SUM(qtdePontos) AS TotalPontos
FROM transacoes
WHERE qtdePontos > 0
    AND DtCriacao >= '2025-05-01'
    AND DtCriacao <= '2025-05-31'
GROUP BY IdCliente
ORDER BY TotalPontos DESC
LIMIT 1;

