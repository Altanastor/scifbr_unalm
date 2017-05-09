# Análisis de Varianza de un Factorial bajo un DCA ------------------------

fp <- file.choose()
#datos <- readxl::read_excel(path = "virusdata.xlsx", sheet = "libro")  #cargar los datos en excel
datos <- readxl::read_excel(path = fp, sheet = "sequia")  #cargar los datos en excel
datos <- as.data.frame(datos)

#Contruyendo el modelo lineal
modelo <- aov(REND ~ Genotipo * Riego, datos)
at <- anova(modelo)

#Obteniendo p-valor
pvalor <- at[1, 5]
#Comparacion de medias (Tukey Test)
tmfdca <- HSD.test(modelo, trt = "Genotipo")


# Análisis de Varianza de un Factorial bajo un DBCA -----------------------

#Usando los datos anteriores, 

#Contruyendo el modelo lineal
modelo <- aov(REND ~ Genotipo * Riego + Block, datos)
at <- anova(modelo)

#Obteniendo p-valor
pvalor <- at[1, 5]
#Comparacion de medias (Tukey Test)
tmfdca <- HSD.test(modelo, trt = c("Genotipo","Riego"))




