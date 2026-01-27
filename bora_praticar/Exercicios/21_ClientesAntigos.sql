SELECT C.IdCliente, 
    C.DtCriacao AS DataCadastro,
    COUNT(T.IdTransacao) AS TotalTransacoes
FROM Transacoes as T

LEFT JOIN clientes as C
    ON T.IdCliente = C.IdCliente
GROUP BY T.IdCliente, C.DtCriacao

ORDER BY DataCadastro, TotalTransacoes DESC;



