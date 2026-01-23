SELECT T.DtCriacao,
    P.DescCategoriaProduto,
   strftime('%Y', DATE(T.DtCriacao))  as AnoTransacao,
   COUNT(DISTINCT T.IdTransacao) as TotalTransacoes
FROM transacoes as T

LEFT JOIN transacao_produto as TP
ON T.IdTransacao = TP.IdTransacao

LEFT JOIN produtos as P
ON TP.IdProduto = P.IdProduto

WHERE AnoTransacao = '2024'

GROUP BY P.DescCategoriaProduto
HAVING P.DescCategoriaProduto = 'lovers';
