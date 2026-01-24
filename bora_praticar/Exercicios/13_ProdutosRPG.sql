SELECT IdProduto,
    DescCategoriaProduto,
    count(DescCategoriaProduto) AS TotalCategorias
FROM produtos
GROUP BY DescCategoriaProduto
HAVING DescCategoriaProduto = 'rpg';
