

SELECT 
    COUNT(DISTINCT IdCliente) AS ClientesRepetidos
FROM transacoes as T

WHERE IdCliente IN(
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE DATE(DtCriacao) = '2025-08-25')
    
AND DATE(T.DtCriacao) = '2025-08-29';
