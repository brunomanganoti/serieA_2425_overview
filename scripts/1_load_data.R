# Script para carregamento dos dados
# Arquivo: serieA-season-2425.csv

# Carregando lib para manipulação de dados
library(tidyverse)

# Atribuindo valores do arquivo csv para o dataframe
data_2425 <- read.csv("data/raw/serieA-season-2425.csv")

# Removendo colunas
data_2425 <- data_2425 %>%
  select(
    -"HTHG",
    -"HTAG",
    -"HTR",
    -"Referee"
  )