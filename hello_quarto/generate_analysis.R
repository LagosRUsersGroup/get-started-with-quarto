# install.packages(quarto)

library(quarto)
library(tidyverse)
library(gapminder)


generate_analysis_report <- function(continent) {
  
  quarto_render(
    input = "hello_quarto.qmd",
    output_format = "html",
    output_file = paste0(continent, "_analysis.html"),
    execute_params = list(continent_name = continent)
  )
  
}

generate_analysis_report("Asia")
generate_analysis_report("Africa")
generate_analysis_report("Americas")
generate_analysis_report("Oceania")



# continent_analysis <- gapminder |>
#   distinct(continent) |>
#   mutate(
#     continent = as.character(continent),
#     output_format = "html",
#     output_file = paste0(continent, "_analysis.html"),
#     execute_params = purrr::map(
#       continent, \(continent) list(continent_name = continent)
#     )
#   ) |>
#   select(-continent)
# 
# purrr::pwalk(
#   continent_analysis,
#   quarto::quarto_render,
#   input = "hello_quarto.qmd",
#   .progress = TRUE
# )
