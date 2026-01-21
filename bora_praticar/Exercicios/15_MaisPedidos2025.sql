-- Qual dia da semana tem mais pedidos em 2025?
SELECT IdTransacao,
    DtCriacao,
     strftime('%w', DATE(DtCriacao)) AS DiaDaSemana,
     COUNT(IdTransacao) AS TotalTIdTransacao
FROM transacoes
WHERE strftime('%Y', DATE(DtCriacao)) = '2025'
GROUP BY DiaDaSemana
ORDER BY TotalTIdTransacao DESC
LIMIT 1;