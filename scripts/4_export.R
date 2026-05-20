# Script para execução do processo e exportação dos novos dados

# Instalando e carregando pacote para escrita de arquivo .csv
#install.packages("writexl")
library(writexl)

source("D:/serieA_2425_overview/scripts/1_load_data.R")
source("D:/serieA_2425_overview/scripts/2_aggregation.R")
source("D:/serieA_2425_overview/scripts/3_process_data.R")

# Exportando dados para o arquivo 'season_stats.csv'
write.csv(
  season_stats,
  file = "D:/serieA_2425_overview/data/processed/season_stats.csv",
  row.names = FALSE)