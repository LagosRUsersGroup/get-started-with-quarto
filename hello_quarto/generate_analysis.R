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
