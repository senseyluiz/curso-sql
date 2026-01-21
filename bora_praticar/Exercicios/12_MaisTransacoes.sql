SELECT IdCliente,
     COUNT(IdTransacao) AS TotalTransacoes
FROM transacoes
GROUP BY IdCliente
ORDER BY TotalTransacoes DESC
LIMIT 1;