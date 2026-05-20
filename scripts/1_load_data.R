# Script para carregamento dos dados
# Arquivo: serieA-season-2425.csv

# Carregando lib para manipulação de dados
library(tidyverse)

# Atribuindo valores do arquivo csv para o dataframe
match_stats <- read.csv("data/raw/serieA-season-2425.csv")

# Removendo colunas
match_stats <- match_stats %>%
  select(
    -"HTHG",
    -"HTAG",
    -"HTR",
    -"Referee"
  )