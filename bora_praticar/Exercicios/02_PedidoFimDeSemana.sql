SELECT *,
    strftime('%w',DATETIME(DtCriacao)) as DiaSemana
FROM transacoes
WHERE DiaSemana IN ('0','6');
