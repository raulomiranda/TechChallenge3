# Análise de Dados PNAD-COVID-19 para Planejamento Hospitalar

## Descrição do Projeto

Como Expert em Data Analytics contratado por um grande hospital, este projeto visa analisar o comportamento da população durante a pandemia da COVID-19 utilizando dados do PNAD-COVID-19 do IBGE. O objetivo é identificar indicadores-chave para o planejamento em caso de um novo surto da doença, focando em características clínicas, comportamentais e econômicas.

Os dados foram coletados do site oficial do IBGE (https://covid19.ibge.gov.br/pnad-covid/) para um período de 3 meses, utilizando no máximo 20 questionamentos da pesquisa.

## Fonte de Dados

- **Fonte**: PNAD-COVID-19 do Instituto Brasileiro de Geografia e Estatística (IBGE)
- **Período**: 3 meses selecionados durante a pandemia
- **URL**: https://covid19.ibge.gov.br/pnad-covid/

## Arquitetura de Dados

Utilizamos a Arquitetura Medalhão (Medallion Architecture) no Google BigQuery para organizar e processar os dados de forma escalável e eficiente.

### Níveis da Arquitetura Medalhão

1. **Camada Bronze (Raw Data)**:
   - Dados brutos extraídos diretamente do PNAD-COVID-19
   - Formato original, sem transformações
   - Armazenamento em tabelas BigQuery para preservação da integridade dos dados originais

2. **Camada Silver (Cleaned Data)**:
   - Dados limpos e padronizados
   - Tratamento de valores nulos, inconsistências e normalização
   - Estruturação para facilitar consultas e análises

3. **Camada Gold (Aggregated Data)**:
   - Dados agregados e prontos para análise
   - Métricas calculadas, indicadores-chave e visualizações
   - Otimizado para relatórios e tomadas de decisão

### Infraestrutura no BigQuery

- **Plataforma**: Google Cloud Platform (GCP) - BigQuery
- **Armazenamento**: Datasets organizados por camadas (bronze, silver, gold)
- **Processamento**: SQL queries para ETL (Extract, Transform, Load)
- **Arquivo SQL**: Consulte `bigQuery.sql` para os scripts de processamento e análise
