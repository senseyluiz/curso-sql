SELECT TP.IdTransacao,
    P.DescNomeProduto,
    DATE(T.DtCriacao) as DataTransacao,
    strftime('%Y-%m', T.DtCriacao) as Mes,
    COUNT(DISTINCT T.IdTransacao) as TotalTransacoes
FROM transacoes as T

LEFT JOIN transacao_produto as TP
    ON T.IdTransacao = TP.IdTransacao

LEFT JOIN produtos as P
    ON TP.IdProduto = P.IdProduto
    
WHERE P.DescNomeProduto = 'Lista de presença'
GROUP BY Mes
ORDER BY TotalTransacoes desc
LIMIT 1; 