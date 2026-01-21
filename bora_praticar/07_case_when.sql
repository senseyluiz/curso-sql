select idCliente,
    qtdePontos,
    case 
        when qtdePontos >= 10001 then 'Mago Supremo'
        when qtdePontos >= 5001 then 'Mago Mestre'
        when qtdePontos >= 1001 then 'Aprendiz'
        when qtdePontos >= 501 then 'Ponei Premium'    
        else 'Ponei'
    end as CategoriaCliente
from clientes;
