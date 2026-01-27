
SELECT T.IdCliente,
    DATE(DtCriacao) AS DataCriacao,
    TP.IdProduto,
    P.DescNomeProduto,
    COUNT(*) AS Quantidade
FROM Transacoes AS T
LEFT JOIN transacao_produto AS TP
    ON T.IdTransacao = TP.IdTransacao
LEFT JOIN Produtos AS P
    ON TP.IdProduto = P.IdProduto
WHERE TP.IdTransacao IS NOT NULL
AND DATE(DtCriacao) = '2025-08-25' 
AND P.DescNomeProduto = 'Lista de presença'
GROUP BY T.IdCliente;
