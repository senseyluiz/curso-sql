-- Qual o valor de pontos positivos por dia
SELECT 
    count(DISTINCT (date(DtCriacao))) as QtdDiasUnicos,
    sum(QtdePontos) as TotalPontosPositivos,
    sum(QtdePontos) / count(DISTINCT (date(DtCriacao))) as ValorMedioPositivo

FROM transacoes
where QtdePontos > 0;