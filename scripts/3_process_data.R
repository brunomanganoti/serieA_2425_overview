# Script para junção das agregações e criação de métricas

# Juntando as agregações para o dataset final
season_stats <- total_wins %>%
  left_join(total_losses, by = "team") %>%
  left_join(total_goals, by = "team") %>%
  left_join(red_cards, by = "team") %>%
  left_join(yellow_cards, by = "team") %>%
  left_join(total_draws, by = "team") %>%
  left_join(total_fouls, by = "team") %>%
  left_join(total_shots, by = "team") %>%
  left_join(total_shots_ontarget, by = "team") %>%
  left_join(total_corners, by = "team") %>%
  left_join(total_goals_conceded, by = "team") %>%
  left_join(total_home_goals, by = "team") %>%
  left_join(total_home_goals_conceded, by = "team") %>%
  left_join(total_away_goals, by = "team") %>%
  left_join(total_away_goals_conceded, by = "team")

# Criando coluna de pontuação
season_stats <- season_stats %>%
  mutate(
    points = ((wins * 3) + draws),
    matches = wins + losses + draws,
    goal_difference = goals - goals_conceded
  ) %>%
  arrange(desc(points),
          desc(goal_difference),
          desc(wins))