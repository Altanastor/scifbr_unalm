# Lenguaje R y Fieldbook : Herramientas para la Investigación Cientifica en Agricultura

[![portada_curso2.png](https://s21.postimg.org/y1vx8hs0n/portada_curso2.png)](https://postimg.org/image/v7srv1pub/)

Curso que se llevará acabo en la Universidad Nacional Agraria, La Molina (UNALM) con el fin de fortalezer las actividades de investigación en la Facultad de Agronomía.


## Requisitos para el curso

- Instalador de Software R ver. 3.3.1
- Instalador Rstudio ver. 1.0.143

Link de descarga de los instaladores : https://drive.google.com/drive/u/0/folders/0BzjuiCv-MHktVDZNaS11aWh4UUU


## Material del Curso

- Manual de la Plataforma Fieldbook: http://www.quipo.org/fieldbook.html
- Diapositivas del curso: 


## Instalacion de Paquetes

# Lista de paquetes a instalar

Después de haber instalado el lenguajsoftware R, entrar al programa donde se abrirá una ventana en blanco con un simbolo de menor (>). Luego copiar y pegar el codigo debajo, y finalemente presionar ENTER.


paquetes <- c("broom","readxl","leaps", "scatterplot3d",                                                                    "knitr","klaR","flashClust",
              "spedep", "AlgDesign", "DBI", "Rcpp", "assertthat","tibble",
              "gtable", "scales", "ggrepel", "cellranger", "htmlwidgets",
              "httpuv", "xtable", "rhansontable", "ggpubr", "htmltools",
              "ggplot2", "dplyr", "tidyr", "magrittr","agricolae", "devtools")


install.packages(paquetes,dependencies = TRUE)

######## Instalar fieldbook
devtools::install_github("flavjack/fieldbook")





