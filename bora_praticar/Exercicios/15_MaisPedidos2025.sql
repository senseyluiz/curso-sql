-- Qual dia da semana tem mais pedidos em 2025?
SELECT *,
     strftime('%w', DATE(DtCriacao)) AS DiaDaSemana,
     COUNT(IdTransacao) AS TotalTIdTransacao
FROM transacoes
GROUP BY DiaDaSemana
ORDER BY TotalTIdTransacao DESC
LIMIT 1;