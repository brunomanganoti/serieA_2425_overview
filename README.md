# Serie A 2024/2025 - Overview
Projeto envolvendo coleta e tratamento de dados do Campeonato Italiano - Temporada 2024/2025.

# Dados
Os dados foram coletados do site: https://datahub.io/football/italian-serie-a

A tabela contém:
| Campo | Descrição original | Descrição em Português |
|-------|---------------------|------------------------|
| Date | Match date | Data da partida |
| HomeTeam | Home team | Time mandante |
| AwayTeam | Away team | Time visitante |
| FTHG | Full Time Home Team Goals | Gols do time mandante no tempo regulamentar |
| FTAG | Full Time Away Team Goals | Gols do time visitante no tempo regulamentar |
| FTR | Full Time Result (H = Home Win, D = Draw, A = Away Win) | Resultado final da partida (H = vitória do mandante, D = empate, A = vitória do visitante) |
| HTHG | Half Time Home Team Goals | Gols do time mandante no primeiro tempo |
| HTAG | Half Time Away Team Goals | Gols do time visitante no primeiro tempo |
| HTR | Half Time Result (H = Home Win, D = Draw, A = Away Win) | Resultado do primeiro tempo (H = vitória do mandante, D = empate, A = vitória do visitante) |
| Referee | Match referee | Árbitro da partida (informação não disponível para Serie A) |
| HS | Home Team Shots | Finalizações do time mandante |
| AS | Away Team Shots | Finalizações do time visitante |
| HST | Home Team Shots on Target | Finalizações no alvo do time mandante |
| AST | Away Team Shots on Target | Finalizações no alvo do time visitante |
| HF | Home Team Fouls Committed | Faltas cometidas pelo time mandante |
| AF | Away Team Fouls Committed | Faltas cometidas pelo time visitante |
| HC | Home Team Corners | Escanteios do time mandante |
| AC | Away Team Corners | Escanteios do time visitante |
| HY | Home Team Yellow Cards | Cartões amarelos do time mandante |
| AY | Away Team Yellow Cards | Cartões amarelos do time visitante |
| HR | Home Team Red Cards | Cartões vermelhos do time mandante |
| AR | Away Team Red Cards | Cartões vermelhos do time visitante |

O objetivo foi transformar os dados originais que estavam orientados à partida (match level) em dados completos orientados por temporada (season level).