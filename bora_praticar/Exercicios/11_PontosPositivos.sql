SELECT IdCliente,
    qtdePontos, DtAtualizacao
FROM clientes
WHERE qtdePontos > 0
GROUP BY IdCliente
HAVING DtAtualizacao >= '2025-05-01' AND DtAtualizacao <= '2025-05-31'
ORDER BY qtdePontos DESC
LIMIT 1;

