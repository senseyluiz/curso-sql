SELECT P.DescNomeProduto,
    P.DescCategoriaProduto,
    COUNT(DISTINCT TP.IdTransacaoProduto) as TotalVendido
FROM transacao_produto as TP

LEFT JOIN produtos as P
ON TP.IdProduto = P.IdProduto

GROUP BY P.DescCategoriaProduto
ORDER BY TotalVendido DESC
LIMIT 10;