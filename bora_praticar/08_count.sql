select count(*) as total_clientes,
    sum(qtdePontos) as total_pontos,
    avg(qtdePontos) as media_pontos
from clientes