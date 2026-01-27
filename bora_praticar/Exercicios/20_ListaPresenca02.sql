SELECT 
    COUNT(DISTINCT T.idCliente) AS Quantidade
FROM Transacoes AS T
LEFT JOIN transacao_produto AS TP
    ON T.IdTransacao = TP.IdTransacao

LEFT JOIN Produtos AS P
    ON TP.IdProduto = P.IdProduto

WHERE DATE(T.DtCriacao) >= '2025-08-25'
AND DATE(T.DtCriacao) <= '2025-08-29'
AND P.DescNomeProduto = 'Lista de presença';


