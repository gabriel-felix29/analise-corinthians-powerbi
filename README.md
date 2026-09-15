# Corinthians em análise

Projeto da disciplina **Software Product: Analysis, Specification, Project & Implementation**.

## Objetivo

Analisar os resultados do Corinthians em 2026 por meio de um dashboard no Power BI, apresentando de forma simples a distribuição de vitórias, empates e derrotas e o desempenho de gols no período estudado.

## AC1

A AC1 cobre o período de **28/01 a 09/09/2026** e apresenta os seguintes indicadores:

- jogos analisados;
- vitórias, empates e derrotas;
- gols marcados e sofridos;
- saldo de gols;
- taxa de vitórias;
- distribuição dos resultados e relação de partidas consideradas.

Com todos os filtros abertos, o painel mostra 35 jogos, 12 vitórias, 12 empates, 11 derrotas, 37 gols marcados, 32 sofridos, saldo de +5 e taxa de vitórias de 34,3%.

## Dados

Fonte: [FBref — Corinthians 2026](https://fbref.com/en/squads/bf4acd28/2026/all_comps/Corinthians-Stats-All-Competitions).

A base desta entrega contém somente partidas da **Série A** e da **Libertadores**. Campeonato Paulista e Copa do Brasil não estão presentes no arquivo obtido. Partidas sem resultado foram excluídas dos indicadores.

O arquivo original está em `dados/originais/` e a base tratada usada na análise está em `dados/tratados/`.

## Como abrir

Para consultar o painel pronto, abra `entregas/AC1/Corinthians_AC1_ENTREGA.pbix` no Power BI Desktop.

O projeto editável está em `entregas/AC1/projeto-editavel/Corinthians_AC1_ENTREGA.pbip`. A consulta foi criada com o caminho local do computador em que o trabalho foi desenvolvido. Em outro computador, abra **Transformar dados > Configurações da fonte de dados**, selecione a origem do CSV e aponte para `dados/tratados/partidas_corinthians_2026.csv` desta cópia do repositório. Depois, aplique as alterações e atualize o modelo.

Os arquivos `Medidas.dax` e `Partidas.pq` registram, respectivamente, as medidas DAX e a consulta Power Query usadas na AC1.

## Planejamento das próximas entregas

As etapas abaixo são planejamento futuro e ainda não fazem parte da implementação atual:

- **AC2:** desempenho como mandante e visitante.
- **AC3:** evolução mensal por competição.
- **AC4:** posse de bola e resultados, consolidação e diagrama do modelo.
