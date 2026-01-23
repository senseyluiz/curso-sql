SELECT P.DescNomeProduto,
    P.DescCategoriaProduto,
    TP.idTransacaoProduto
FROM transacao_produto as TP
LEFT JOIN produtos as P ON TP.IdProduto = P.IdProduto
