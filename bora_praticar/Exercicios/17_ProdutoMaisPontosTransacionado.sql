SELECT IdProduto,
    SUM(vlProduto * QtdeProduto) AS TotalPontos
FROM transacao_produto
GROUP BY IdProduto
ORDER BY TotalPontos DESC
LIMIT 1;