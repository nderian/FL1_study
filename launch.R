# Launch code

# Load libraries
library("tidyverse")
library("lubridate")
# Import data
play <- read_csv("P:/Work/Projects/z_Perso/F1/F1_1213.csv")
# Set teams
L <- as.matrix(unlist(unique(play[, "HomeTeam"])))
# Number games
gamePlayed <- apply(L, 1, gameP, play)
# Goals for and against
GoalsFor <- apply(L, 1, getGoalsF, play)
GoalsAgainst <- apply(L, 1, getGoalsA, play)
# Average goals for and against
avgGoalForHome <- GoalsFor[1,]/ gamePlayed[1,]
avgGoalAgainstHome <- GoalsAgainst[1,] / gamePlayed[1,]
avgGoalForAway <- GoalsFor[2,] / gamePlayed[1,]
avgGoalAgainstAway <- GoalsAgainst[2,] / gamePlayed[2,]
# Attack and defense strength
attStrenHome <- avgGoalForHome / mean(avgGoalForHome)
defStrenHome <- avgGoalAgainstHome / mean(avgGoalAgainstHome)
attStrenAway <- avgGoalForAway / mean(avgGoalForAway)
defStrenAway <- avgGoalAgainstAway / mean(avgGoalAgainstAway)

