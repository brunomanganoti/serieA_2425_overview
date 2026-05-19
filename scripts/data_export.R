# Script para exportação dos novos dados

# Instalando pacote para escrita de arquivo .csv
#install.packages("writexl")
library(writexl)

# Exportando dados para o arquivo 'season_stats.csv'
write.csv(
  season_stats,
  file = "D:/serieA_2425_analytics/data/processed/season_stats.csv",
  row.names = FALSE)