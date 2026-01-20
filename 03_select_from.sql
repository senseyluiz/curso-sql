select
    COUNT(*) as TotalProdutos,
    DescCategoriaProduto
   
from produtos
GROUP BY DescCategoriaProduto