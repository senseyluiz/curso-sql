-- Qual o valor de pontos positivos por dia
SELECT 
    sum(QtdePontos) as TotalPontosPositivos,
    count(DISTINCT (date(DtCriacao))) as QtdDiasUnicos,
    sum(QtdePontos) / count(DISTINCT (date(DtCriacao))) as ValorMedioPositivo

FROM transacoes
where QtdePontos > 0;