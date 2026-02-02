WITH clientesDiarios AS (
    SELECT 
        DATE(DtCriacao) AS DataCadastro,
        COUNT(DISTINCT IdCliente) AS TotalUsuarios
    FROM clientes
    GROUP BY DATE(DtCriacao)
    ORDER BY DataCadastro
)

SELECT *,
    SUM(TotalUsuarios) OVER (ORDER BY DataCadastro) AS UsuariosCadastrados
FROM clientesDiarios;