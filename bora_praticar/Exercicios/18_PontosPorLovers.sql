SELECT T.IdCliente,    
    SUM(T.QtdePontos) AS QtdePontos   
FROM transacao_produto as TP
JOIN transacoes as T
    ON TP.IdTransacao = T.IdTransacao
JOIN produtos as P
    ON TP.IdProduto = P.IdProduto
WHERE P.DescCategoriaProduto = 'lovers'
GROUP BY T.IdCliente
ORDER BY QtdePontos 
LIMIT 5;

