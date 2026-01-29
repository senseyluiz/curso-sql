SELECT *
FROM transacao_produto as TP
WHERE TP.IdProduto IN(
    SELECT IdProduto
    FROM produtos
    WHERE DescNomeProduto = 'Resgatar Ponei');

