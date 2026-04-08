## Volume de pessoas / base do estudo

Entender a quantidade de entrevistados

SELECT
  mes,
  COUNT(*) AS total_entrevistados
FROM `basedosdados.br_ibge_pnad_covid.microdados`
WHERE ano = 2020
AND mes IN (7,8,9)
GROUP BY mes
ORDER BY mes


## Sintomas mais comuns

SELECT
  mes,
  COUNTIF(CAST(B0011 AS INT64) = 1) AS febre,
  COUNTIF(CAST(B0012 AS INT64) = 1) AS tosse,
  COUNTIF(CAST(B0015 AS INT64) = 1) AS dor_cabeca,
  COUNTIF(CAST(B0018 AS INT64) = 1) AS nariz_escorrendo,
  COUNTIF(CAST(B0019 AS INT64) = 1) AS fadiga
FROM `basedosdados.br_ibge_pnad_covid.microdados`
WHERE ano = 2020
AND mes IN (7,8,9)
GROUP BY mes
ORDER BY mes


## Procura por atendimento

SELECT
  mes,
  COUNTIF(CAST(B002 AS INT64) = 1) AS procurou_atendimento
FROM `basedosdados.br_ibge_pnad_covid.microdados`
WHERE ano = 2020
AND mes IN (7,8,9)
GROUP BY mes
ORDER BY mes


## Numero de internacoes no sistema

SELECT
  mes,
  COUNTIF(CAST(B002 AS INT64) = 1) AS internados
FROM `basedosdados.br_ibge_pnad_covid.microdados`
WHERE ano = 2020
AND mes IN (7,8,9)
GROUP BY mes
ORDER BY mes

## Verificar se as pessoas tinha plano de saude ou nao


SELECT
  mes,
  COUNTIF(CAST(B007 AS INT64) = 1) AS com_plano,
  COUNTIF(CAST(B007 AS INT64) = 2) AS sem_plano
FROM `basedosdados.br_ibge_pnad_covid.microdados`
WHERE ano = 2020
AND mes IN (7,8,9)
GROUP BY mes
ORDER BY mes


## Entende o impacto economico

SELECT
  mes,
  COUNTIF(CAST(C007 AS INT64) = 1) AS trabalhando
FROM `basedosdados.br_ibge_pnad_covid.microdados`
WHERE ano = 2020
AND mes IN (7,8,9)
GROUP BY mes
ORDER BY mes

## Comportamento se ficou em casa ou nao

SELECT
  mes,
  COUNTIF(CAST(C013 AS INT64) = 1) AS ficou_em_casa
FROM `basedosdados.br_ibge_pnad_covid.microdados`
WHERE ano = 2020
AND mes IN (7,8,9)
GROUP BY mes
ORDER BY mes