select idProduto,
    count(*) as quantidade_transacoes
from transacao_produto
group by idProduto;