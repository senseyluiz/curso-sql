SELECT *,
    COUNT(IdProduto) AS TotalProdutos
FROM transacao_produto
GROUP BY IdProduto
ORDER BY TotalProdutos DESC
LIMIT 1;