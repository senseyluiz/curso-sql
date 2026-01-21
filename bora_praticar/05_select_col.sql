select IdCliente,
    QtdePontos,
    QtdePontos + 10,
    DtCriacao,
    strftime('%w', (DATETIME(DtCriacao) )) as DiaSemana
    from clientes