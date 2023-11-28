#IMPORT
library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)

# Scrapping Website
link <- 'https://www.imdb.com/search/title/?groups=top_100&sort=user_rating,desc'


#Html Element from website
web<- read_html(link)
View(web)

#segregatting 
name <- web%>% html_nodes(".lister-item-header a") %>% html_text()
View(name)

year <- web%>% html_nodes(".text-muted.unbold") %>% html_text()
View(year)

duration  <- web%>% html_nodes(".runtime") %>% html_text()
View(duration)

rating <- web%>% html_nodes(".ratings-imdb-rating strong") %>% html_text()
View(rating)

crew  <- web%>% html_nodes(".text-muted+ p") %>% html_text()
View(crew)

gross  <- web%>% html_nodes(".sort-num_votes-visible span:nth-child(5)") %>% html_text()
View(gross)

rank <- web%>% html_nodes(".top-chart-rank+ span") %>% html_text()
View(rank)

genre <- web%>% html_nodes(".genre") %>% html_text()
View(genre)

votes <- web%>% html_nodes(".sort-num_votes-visible span:nth-child(2)") %>% html_text()
View(votes)


movie = data.frame(name, year, duration, rating, crew, gross, rank, genre, votes)
View(movie)


write.csv(movie,"imbd_movies.csv")

str(movie)