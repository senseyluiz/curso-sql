WITh CLIENTES_JANEIRO AS (
    SELECT DISTINCT IdCliente        
    FROM transacoes
    WHERE DATE(DtCriacao) >= '2025-01-01'
    AND DATE(DtCriacao) < '2025-02-01'
),
CLIENTES_CURSO_SQL AS(
    SELECT DISTINCT IdCliente    
    FROM transacoes
    WHERE DATE(DtCriacao) >= '2025-08-25'
    AND DATE(DtCriacao) < '2025-08-30'
),

CLIENTES_JANEIRO_SQL AS (
    SELECT 
        count(CJ.IdCliente) as ClienteJAneiro,
        count(CCS.IdCliente) as ClienteCursoSQL
    FROM CLIENTES_JANEIRO as CJ
    LEFT JOIN CLIENTES_CURSO_SQL AS CCS
    ON CJ.IdCliente = CCS.IdCliente
)

SELECT * FROM CLIENTES_JANEIRO_SQL