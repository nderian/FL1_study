# Collection of functions for my project

# Get goals for home and away teams
# x is a dataframe and L a team
getGoalsF <- function(L, x) {
    locHome <- grep(L, unlist(x[, "HomeTeam"]))
    locAway <- grep(L, unlist(x[, "AwayTeam"]))
    goalsHome <- sum(x[locHome, "FTHG"])
    goalsAway <- sum(x[locAway, "FTAG"])
    res <- c(goalsHome, goalsAway)
    return(res)
}

getGoalsA <- function(L, x) {
    locHome <- grep(L, unlist(x[, "HomeTeam"]))
    locAway <- grep(L, unlist(x[, "AwayTeam"]))
    goalsHome <- sum(x[locHome, "FTAG"])
    goalsAway <- sum(x[locAway, "FTHG"])
    res <- c(goalsHome, goalsAway)
    return(res)
}

# Number of games played
gameP <- function(L, x) {
    gpH <- sum(grepl(L, unlist(x[, "HomeTeam"])))
    gpA <- sum(grepl(L, unlist(x[, "AwayTeam"])))
    gp <- c(gpH, gpA)
    return(gp)
}
