# Script para criação de agregações

# Calculando total de cartões amarelos por time
# ---------------------------------------------

# Cartões amarelos dos times mandantes
home_yellow <- match_stats %>%
  select(
    team = HomeTeam,
    yellow_cards = HY
  )

# Cartões amarelos dos times visitantes
away_yellow <- match_stats %>%
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
    yellow_cards = sum(yellow_cards, na.rm = TRUE)
  ) %>%
  arrange(desc(yellow_cards))

# Calculando total de cartões vermelhos por time
# ----------------------------------------------

# Cartões vermelhos dos times mandantes
home_red <- match_stats %>%
  select(
    team = HomeTeam,
    red_cards = HR
  )

# Cartões vermelhos dos times visitantes
away_red <- match_stats %>%
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
    red_cards = sum(red_cards, na.rm = TRUE)
  ) %>%
  arrange(desc(red_cards))

# Calculando total de gols marcados por time
# ----------------------------------------------

# Total de gols dos times mandantes
home_goals <- match_stats %>%
  select(
    team = HomeTeam,
    goals = FTHG
  )

total_home_goals <- home_goals %>%
  group_by(team) %>%
  summarise(
    home_goals = sum(goals, na.rm = TRUE)
  ) %>%
  arrange(desc(home_goals))

# Total de gols dos times visitantes
away_goals <- match_stats %>%
  select(
    team = AwayTeam,
    goals = FTAG
  )

total_away_goals <- away_goals %>%
  group_by(team) %>%
  summarise(
    away_goals = sum(goals, na.rm = TRUE)
  ) %>%
  arrange(desc(away_goals))

# Empilhando linhas
total_goals <- bind_rows(
  home_goals,
  away_goals
)

# Criando agregação do total de gols marcados por time
total_goals <- total_goals %>%
  group_by(team) %>%
  summarise(
    goals = sum(goals, na.rm = TRUE)
  ) %>%
  arrange(desc(goals))

# Calculando total de gols sofridos por time
# ----------------------------------------------

# Total de gols sofridos pelos times mandantes
home_goals_conceded <- match_stats %>%
  select(
    team = HomeTeam,
    goals_conceded = FTAG
  )

# Total de gols sofridos pelos times visitantes
away_goals_conceded <- match_stats %>%
  select(
    team = AwayTeam,
    goals_conceded = FTHG
  )

# Empilhando linhas
total_goals_conceded <- bind_rows(
  home_goals_conceded,
  away_goals_conceded
)

# Criando agregação do total de gols sofridos por time
total_goals_conceded <- total_goals_conceded %>%
  group_by(team) %>%
  summarise(
    goals_conceded = sum(goals_conceded, na.rm = TRUE)
  ) %>%
  arrange(desc(goals_conceded))

# Calculando total de faltas cometidas por time
# ---------------------------------------------

# Total de faltas dos times mandantes
home_fouls <- match_stats %>%
  select(
    team = HomeTeam,
    fouls = HF
  )

# Total de faltas dos times visitantes
away_fouls <- match_stats %>%
  select(
    team = AwayTeam,
    fouls = AF
  )

# Empilhando linhas
total_fouls <- bind_rows(
  home_fouls,
  away_fouls
)

# Criando agregação do total de faltas marcadas
total_fouls <- total_fouls %>%
  group_by(team) %>%
  summarise(
    fouls = sum(fouls, na.rm = TRUE)
  ) %>%
  arrange(desc(fouls))

# Calculando total de escanteios por time
# ---------------------------------------------

# Total de escanteios dos times mandantes
home_corners <- match_stats %>%
  select(
    team = HomeTeam,
    corners = HC
  )

# Total de escanteios dos times visitantes
away_corners <- match_stats %>%
  select(
    team = AwayTeam,
    corners = AC
  )

# Empilhando linhas
total_corners <- bind_rows(
  home_corners,
  away_corners
)

# Criando agregação do total de escanteios
total_corners <- total_corners %>%
  group_by(team) %>%
  summarise(
    corners = sum(corners, na.rm = TRUE)
  ) %>%
  arrange(desc(corners))

# Calculando total de chutes por time
# ---------------------------------------------

# Total de chutes dos times mandantes
home_shots <- match_stats %>%
  select(
    team = HomeTeam,
    shots = HS
  )

# Total de chutes dos times visitantes
away_shots <- match_stats %>%
  select(
    team = AwayTeam,
    shots = AS
  )

# Empilhando linhas
total_shots <- bind_rows(
  home_shots,
  away_shots
)

# Criando agregação do total de chutes 
total_shots <- total_shots %>%
  group_by(team) %>%
  summarise(
    shots = sum(shots, na.rm = TRUE)
  ) %>%
  arrange(desc(shots))

# Calculando total de chutes no alvo por time
# ---------------------------------------------

# Total de chutes no alvo dos times mandantes
home_shots_ontarget <- match_stats %>%
  select(
    team = HomeTeam,
    shots_ontarget = HST
  )

# Total de chutes no alvo dos times visitantes
away_shots_ontarget <- match_stats %>%
  select(
    team = AwayTeam,
    shots_ontarget = AST
  )

# Empilhando linhas
total_shots_ontarget <- bind_rows(
  home_shots_ontarget,
  away_shots_ontarget
)

# Criando agregação do total de chutes no alvo 
total_shots_ontarget <- total_shots_ontarget %>%
  group_by(team) %>%
  summarise(
    shots_ontarget = sum(shots_ontarget, na.rm = TRUE)
  ) %>%
  arrange(desc(shots_ontarget))

# Calculando total de vitórias por time
# -------------------------------------

# Vitórias dos times mandantes
home_wins <- match_stats %>%
  filter(FTR == "H") %>%
  select(
    team = HomeTeam
  )

# Vitórias dos times visitantes
away_wins <- match_stats %>%
  filter(FTR == "A") %>%
  select(
    team = AwayTeam
  )

# Empilhando as linhas
total_wins <- bind_rows(
  home_wins,
  away_wins
)

# Criando agregação de vitórias por time
total_wins <- total_wins %>%
  group_by(team) %>%
  summarise(
    wins = n()
  ) %>%
  arrange(desc(wins))

# Calculando total de derrotas por time
# -------------------------------------

# Derrotas dos times mandantes
home_losses <- match_stats %>%
  filter(FTR == "A") %>%
  select(
    team = HomeTeam
  )

# Derrotas dos times visitantes
away_losses <- match_stats %>%
  filter(FTR == "H") %>%
  select(
    team = AwayTeam
  )

# Empilhando as linhas
total_losses <- bind_rows(
  home_losses,
  away_losses
)

# Criando agregação de derrotas por time
total_losses <- total_losses %>%
  group_by(team) %>%
  summarise(
    losses = n()
  ) %>%
  arrange(desc(losses))

# Calculando total de empates por time
# -------------------------------------

# Filtrando os resultados de empate
total_draws <- match_stats %>%
  filter(FTR == "D") %>%
  select(
    HomeTeam,
    AwayTeam
  )

# Juntando as colunas
total_draws <- total_draws %>%
  pivot_longer(
    cols = everything(),
    values_to = "team"
  ) %>%
  select(team)

# Criando agregação do total de empates
total_draws <- total_draws %>%
  group_by(team) %>%
  summarise(
    draws = n()
  ) %>%
  arrange(desc(draws))

# =======================================