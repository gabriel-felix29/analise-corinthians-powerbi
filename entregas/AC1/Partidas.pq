let
    CaminhoCSV = "C:\Users\Gabriel GhT\Documents\Projeto-faculdade-analise-de-dados\AC1\partidas_corinthians_2026.csv",
    Fonte = Csv.Document(File.Contents(CaminhoCSV), [Delimiter=";", Columns=20, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Cabecalhos = Table.PromoteHeaders(Fonte, [PromoteAllScalars=true]),
    Ausentes = Table.ReplaceValue(Cabecalhos, "", null, Replacer.ReplaceValue, Table.ColumnNames(Cabecalhos)),
    Tipos = Table.TransformColumnTypes(Ausentes, {{"data", type date}, {"hora", type text}, {"competicao", type text}, {"fase", type text}, {"dia_semana", type text}, {"mando", type text}, {"resultado", type text}, {"gols_pro", Int64.Type}, {"gols_contra", Int64.Type}, {"adversario", type text}, {"posse_bola", type number}, {"publico", Int64.Type}, {"capitao", type text}, {"formacao", type text}, {"formacao_adversario", type text}, {"arbitro", type text}, {"relatorio", type text}, {"observacoes", type text}, {"status", type text}, {"id_partida", type text}}, "en-US")
in
    Tipos
