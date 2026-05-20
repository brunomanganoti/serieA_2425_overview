# Script para execução do processo e exportação dos novos dados

# Instalando pacote para escrita de arquivo .csv
#install.packages("writexl")
library(writexl)

source("D:/serieA_2425_analytics/scripts/load_data.R")
source("D:/serieA_2425_analytics/scripts/aggregation.R")
source("D:/serieA_2425_analytics/scripts/process_data.R")

# Exportando dados para o arquivo 'season_stats.csv'
write.csv(
  season_stats,
  file = "D:/serieA_2425_analytics/data/processed/season_stats.csv",
  row.names = FALSE)