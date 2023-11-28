# IMPORTING LIBRARIES
library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)
# SCRAPPING WEBSITE
link <- "https://editorial.rottentomatoes.com/guide/popular-movies/"

# Allowability
path = paths_allowed(link)

# HTML ELEMENTS FROM WEBSITE
web <- read_html(link)
View(web)


name <- web %>% html_nodes(".article_movie_title a") %>% html_text()
View(name)

year <- web %>% html_nodes(".start-year") %>% html_text()
View(year)


rating <- web %>% html_nodes(".tMeterScore") %>% html_text()
View(rating)

rank <- web %>% html_nodes(".countdown-index") %>% html_text()
View(rank)

Director <- web %>% html_nodes(".director .descriptor+ a") %>% html_text()
View(Director)


# CREATING DATAFRAME
movies.ratings <- data.frame(name, year, rating, rank, Director)

# VIEW DATAFRAME
View(movies.ratings)

# SAVING DATA
write.csv (movies.ratings, "My movie data.csv")
