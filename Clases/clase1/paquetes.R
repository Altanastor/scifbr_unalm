# Lista de paquetes a instalar

# Seleccionar de la linea 6 hasta la linea 17, pegar el codigo de
# abajo en R y presionar ENTER.


paquetes <- c("broom","readxl", "leaps", "scatterplot3d", "flashClust", "knitr","klaR",
  "spedep", "AlgDesign", "DBI", "Rcpp", "assertthat","tibble",
  "gtable", "scales", "ggrepel", "cellranger", "htmlwidgets",
  "httpuv", "xtable", "rhansontable", "ggpubr", "htmltools",
  "ggplot2", "dplyr", "tidyr", "magrittr","agricolae", "devtools")

install.packages(paquetes,dependencies = TRUE)

# Instalar fieldbook
devtools::install_github("omarbenites/fieldbook")







