library(rvest)


link <- "https://en.wikipedia.org/wiki/Comma-separated_values"
page <- read_html(link)

table <- html_node(page, ".wikitable")%>%
        html_table()

csv <- write.csv(table, file = "cars")

read.csv("cars")



