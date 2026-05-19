# Script para tratamento dos dados
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

View(data_2425)

# Calculando total de cartões amarelos por time
# ---------------------------------------------

# Cartões amarelos dos times mandantes
home_yellow <- data_2425 %>%
  select(
    team = HomeTeam,
    yellow_cards = HY
  )

# Cartões amarelos dos times visitantes
away_yellow <- data_2425 %>%
  select(
    team = AwayTeam,
    yellow_cards = AY
  )

# Empilhando as linhas das tabelas de mandantes e visitantes
yellow_cards <- bind_rows(
  home_yellow,
  away_yellow
)

# Criando agregação dos cartões amarelos
yellow_cards <- yellow_cards %>%
  group_by(team) %>%
  summarise(
    yellow_cards = sum(yellow_cards)
  ) %>%
  arrange(desc(yellow_cards))

View(yellow_cards)

# Calculando total de cartões vermelhos por time
# ----------------------------------------------

# Cartões vermelhos dos times mandantes
home_red <- data_2425 %>%
  select(
    team = HomeTeam,
    red_cards = HR
  )

# Cartões vermelhos dos times visitantes
away_red <- data_2425 %>%
  select(
    team = AwayTeam,
    red_cards = AR
  )

# Empilhando linhas
red_cards <- bind_rows(
  home_red,
  away_red
)

# Criando agregação dos cartões vermelhos
red_cards <- red_cards %>%
  group_by(team) %>%
  summarise(
    red_cards = sum(red_cards)
  ) %>%
  arrange(desc(red_cards))

View(red_cards)

# Calculando total de gols marcados por time
# ----------------------------------------------


