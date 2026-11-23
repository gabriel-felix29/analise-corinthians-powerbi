# Corinthians em análise

Projeto da disciplina **Software Product: Analysis, Specification, Project & Implementation**.

**Autor:** Gabriel Felix Pontes Pinheiro Rego.

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

Sem restringir a competição ou o período, o painel mostra 35 jogos, 12 vitórias, 12 empates, 11 derrotas, 37 gols marcados, 32 sofridos, saldo de +5 e taxa de vitórias de 34,3%.

## Vídeo da AC1

[Assistir à apresentação da AC1 no YouTube](https://youtu.be/8ghU2RmhhU8)

O vídeo apresenta o planejamento no board, a origem dos dados e a demonstração do dashboard, incluindo os indicadores e filtros por competição e período.

## AC2 — Mandante x visitante

[Vídeo de apresentação da AC2](https://youtu.be/ygtt8AJBoXQ)

A AC2 compara o desempenho do Corinthians como mandante e visitante nas partidas com resultado, no período de **28/01 a 09/09/2026**. O PBIX final contém as páginas AC1 e AC2 e abre na página AC2, com todas as competições e o período completo selecionados.

A página reúne blocos de indicadores por mando, gráficos de resultados e de médias de gols, tabela-resumo e uma conclusão dinâmica que acompanha as segmentações de competição e período. A leitura compara taxas de vitórias, diferença em pontos percentuais, resultados predominantes e médias de gols marcados e sofridos; trata empates entre frequências e períodos sem partidas. Contagens sem ocorrências aparecem como zero.

Comparação validada no recorte completo:

| Indicador | Mandante | Visitante |
| --- | ---: | ---: |
| Jogos | 18 | 17 |
| Vitórias | 8 | 4 |
| Empates | 3 | 9 |
| Derrotas | 7 | 4 |
| Gols marcados | 19 | 18 |
| Gols sofridos | 15 | 17 |
| Saldo de gols | +4 | +1 |
| Taxa de vitórias | 44,4% | 23,5% |
| Pontos | 27 | 21 |
| Aproveitamento | 50,0% | 41,2% |
| Média de gols marcados | 1,06 | 1,06 |
| Média de gols sofridos | 0,83 | 1,00 |

A taxa de vitórias é a quantidade de vitórias dividida pelos jogos. O aproveitamento é a quantidade de pontos dividida pelo máximo de três pontos por jogo. Pontos e aproveitamento usam **3 pontos por vitória e 1 por empate** como indicador comparativo, inclusive na Libertadores, sem representar uma classificação oficial.

No recorte completo, a taxa de vitórias é maior como mandante em **20,9 pontos percentuais**. Vitórias predominam em casa e empates fora; as médias de gols marcados são próximas, com menos gols sofridos por jogo como mandante. Nos recortes filtrados, a conclusão do painel é recalculada.

As 13 medidas atuais, incluindo `AC2 Conclusão`, estão em `entregas/AC2/Medidas.dax`, exportadas do modelo. A AC1 e sua consulta foram preservadas.

## AC3 — Evolução mensal por competição

[Vídeo de apresentação da AC3](https://youtu.be/kIBbDeYFj70)

A AC3 compara o aproveitamento mensal do Corinthians na Série A e na Libertadores entre **28/01 e 09/09/2026**. Selecione a competição e o período para acompanhar os indicadores e a conclusão. Os dois gráficos usam a mesma escala de 0% a 100%. A tabela detalha os resultados e os gols de cada mês por competição.

| Competição | Jogos | Vitórias | Empates | Derrotas | Gols pró–contra | Pontos comparativos | Aproveitamento |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| Série A | 26 | 8 | 8 | 10 | 27–27 | 32 | 41,0% |
| Libertadores | 9 | 4 | 4 | 1 | 10–5 | 16 | 59,3% |
| Total | 35 | 12 | 12 | 11 | 37–32 | 48 | 45,7% |

O aproveitamento divide os pontos do recorte (três por vitória e um por empate) pelo máximo possível de três por jogo. Isso permite comparar as competições, inclusive partidas de mata-mata. Nos 35 jogos, a taxa de vitórias foi de 34,3% e o saldo foi de +5.

Janeiro e setembro têm cobertura parcial. Em janeiro, a derrota por 2 a 1 para o Bahia pela Série A resultou em 0% de aproveitamento. Em junho, a base registra zero partidas nas duas competições e o aproveitamento fica em branco. Considerando ambas as competições, fevereiro teve o maior aproveitamento, com 77,8% em três jogos.

## AC4 — Posse de bola por resultado

A página compara a posse média do Corinthians em vitórias, empates e derrotas. Cada partida contribui uma vez para a média do seu resultado. Os filtros de competição e período também controlam a tabela de conferência por jogo.

| Resultado | Jogos com posse | Posse média |
| --- | ---: | ---: |
| Vitória | 12 | 54,3% |
| Empate | 12 | 51,1% |
| Derrota | 11 | 62,1% |

As 35 partidas com resultado entre 28/01 e 09/09/2026 têm posse registrada. A exportação do FBref em `dados/originais/sportsref_download.xls` traz a coluna **Poss** em pontos percentuais. No CSV tratado e no modelo, `posse_bola` é uma fração. Na derrota contra o Bahia em 28/01, o valor 59 da fonte corresponde a 0,59 no modelo e a 59% na tela. Valores ausentes ficam fora da média e da contagem de jogos com posse.

A maior média ocorreu nas derrotas. Essa observação descreve o recorte e não estabelece uma relação causal. Ao filtrar **Libertadores**, as médias são 58% em quatro vitórias, 54% em quatro empates e 77% em uma derrota.

Abra a página AC4 no [relatório da AC4](entregas/AC4/Corinthians_AC4_ENTREGA.pbix). Consulte as [medidas DAX](entregas/AC4/Medidas.dax), o [MER em PDF](entregas/AC4/MER.pdf) e a [fonte editável do diagrama](entregas/AC4/MER.html).

## Dados

Fonte: [FBref — Corinthians 2026](https://fbref.com/en/squads/bf4acd28/2026/all_comps/Corinthians-Stats-All-Competitions).

A base desta entrega contém somente partidas da **Série A** e da **Libertadores**. Campeonato Paulista e Copa do Brasil não estão presentes no arquivo obtido. Partidas sem resultado foram excluídas dos indicadores.

O arquivo original está em `dados/originais/` e a base tratada usada na análise está em `dados/tratados/`.

## Como abrir

Para consultar o painel pronto, abra `entregas/AC1/Corinthians_AC1_ENTREGA.pbix` no Power BI Desktop.

Para consultar a entrega da AC2, abra **`entregas/AC2/Corinthians_AC2_ENTREGA.pbix`** no Power BI Desktop. Os dados já estão importados; não é necessário atualizar para visualizar as páginas.

Para consultar a AC3, abra o arquivo [Corinthians_AC3_ENTREGA.pbix](entregas/AC3/Corinthians_AC3_ENTREGA.pbix) no Power BI Desktop e selecione **AC3 | Evolução mensal por competição**. As três páginas usam os dados já importados.

O projeto editável está em `entregas/AC1/projeto-editavel/Corinthians_AC1_ENTREGA.pbip`. A consulta foi criada com o caminho local do computador em que o trabalho foi desenvolvido. Em outro computador, abra **Transformar dados > Configurações da fonte de dados**, selecione a origem do CSV e aponte para `dados/tratados/partidas_corinthians_2026.csv` desta cópia do repositório. Depois, aplique as alterações e atualize o modelo.

Os arquivos `Medidas.dax` e `Partidas.pq` registram, respectivamente, as medidas DAX e a consulta Power Query usadas na AC1.

A consulta mantida no PBIX da AC2 ainda referencia o caminho original `C:\Users\Gabriel GhT\Documents\Projeto-faculdade-analise-de-dados\AC1\partidas_corinthians_2026.csv`. Para uma atualização futura em outro computador, use a orientação acima e o CSV do repositório. A preparação da entrega AC2 não alterou a consulta nem atualizou os dados.

## Estrutura de pastas

```text
dados/
├── originais/sportsref_download.xls
└── tratados/partidas_corinthians_2026.csv
entregas/
├── AC1/
│   ├── Corinthians_AC1_ENTREGA.pbix
│   ├── Medidas.dax
│   ├── Partidas.pq
│   └── projeto-editavel/
├── AC2/
│   ├── Corinthians_AC2_ENTREGA.pbix
│   └── Medidas.dax
├── AC3/
│   ├── Corinthians_AC3_ENTREGA.pbix
│   ├── Medidas.dax
│   └── Calendario.dax
└── AC4/
    ├── Corinthians_AC4_ENTREGA.pbix
    ├── Medidas.dax
    ├── MER.pdf
    └── MER.html
```

O arquivo `entregas/AC2/Corinthians_AC2_DESENVOLVIMENTO.pbix` permanece local e está excluído do versionamento pelo `.gitignore`.

## Planejamento das quatro entregas

Board do projeto: [Planejamento das ACs](https://github.com/users/gabriel-felix29/projects/2).

A marcação indica se a análise de cada etapa já foi implementada. AC1, AC2 e AC3 estão publicadas. A análise da AC4 está em revisão.

- [x] [AC1 — Analisar resultados e saldo de gols do Corinthians](https://github.com/gabriel-felix29/analise-corinthians-powerbi/issues/1)
- [x] [AC2 — Comparar desempenho como mandante e visitante](https://github.com/gabriel-felix29/analise-corinthians-powerbi/issues/2)
- [x] [AC3 — Analisar evolução mensal por competição](https://github.com/gabriel-felix29/analise-corinthians-powerbi/issues/3)
- [ ] [AC4 — Analisar posse de bola e consolidar o projeto](https://github.com/gabriel-felix29/analise-corinthians-powerbi/issues/4)
