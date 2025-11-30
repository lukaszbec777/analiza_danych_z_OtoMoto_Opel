library(rvest)
library(tidyverse)

base_link <- "https://www.otomoto.pl/osobowe/opel?page="

# --- FUNKCJA POBIERAJĄCA JEDNĄ STRONĘ ---
function_particular_page <- function(i){
  
  link_particular_page <- paste0(base_link, i)
  page_opel <- read_html(link_particular_page)
  
  car_name <- page_opel %>% 
    html_nodes(xpath = "//article/section/div[2]/div/h2") %>% html_text()
  
  car_price <- page_opel %>% 
    html_nodes(xpath = "//article/section/div[4]/div[2]/div/h3") %>% html_text()
  
  car_mileage <- page_opel %>% 
    html_nodes(xpath = "//article/section/div[3]/dl/dd[1]") %>% html_text()
  
  car_fuel <- page_opel %>% 
    html_nodes(xpath = "//article/section/div[3]/dl/dd[2]") %>% html_text()
  
  car_gearbox <- page_opel %>% 
    html_nodes(xpath = "//article/section/div[3]/dl/dd[3]") %>% html_text()
  
  car_year <- page_opel %>% 
    html_nodes(xpath = "//article/section/div[3]/dl/dd[4]") %>% html_text()
  
  car_voivodeship <- page_opel %>% 
    html_nodes(xpath = "//article/section/div[3]/ul/li[1]") %>% html_text()
  
  voivodeship <- car_voivodeship %>%
    str_extract("\\([^()]*\\)$") %>%  
    str_remove("^\\(") %>% 
    str_remove("\\)$")
  
  data.frame(
    Car_Name = car_name,
    Price = car_price,
    Mileage = car_mileage,
    Fuel = car_fuel,
    Gearbox = car_gearbox,
    Year = car_year,
    Voivodeship = voivodeship
  )
}

# --- PĘTLA POBIERAJĄCA WIELE STRON ---
DataFrame_OtoMoto <- data.frame()
errors <- c()

for(i in 1:512){
  tryCatch({
    message("Scraping page: ", i)
    df <- function_particular_page(i)
    DataFrame_OtoMoto <- rbind(DataFrame_OtoMoto, df)
  }, error = function(e){
    errors <<- c(errors, i)
  })
}


# usuwamy duplikaty
DataFrame_OtoMoto <- unique(DataFrame_OtoMoto)

# wyniki
head(DataFrame_OtoMoto)
errors

write.csv(DataFrame_OtoMoto, "DataFrame_OtoMoto.csv", row.names = FALSE)
