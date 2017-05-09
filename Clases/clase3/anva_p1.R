# --------- Analisis de Varianza ------------------------------------------

# Analisis de Varianza de un DCA ------------------------------------------

library(agricolae)
fp <- file.choose()
#datos <- readxl::read_excel(path = "virusdata.xlsx", sheet = "libro")  #cargar los datos en excel
datos <- readxl::read_excel(path = fp, sheet = "sequia")  #cargar los datos en excel
datos <- as.data.frame(datos)

#Contruyendo el modelo lineal
modelo <- aov( REND ~ Genotipo, datos )
at <- anova(modelo)

#Obteniendo p-valor
pvalor <- at[1, 5]

#Parametros del modelo y Comparacion de medias (Tukey)
df<-df.residual(modelo) #grados de libertad
MSerror<-deviance(modelo)/df #cuadrado medio del error
tmdca<- HSD.test(datos[,"REND"], datos[, "Genotipo"], DFerror = df, MSerror = MSerror, console=TRUE)
tmdca



# Ánalisis de Varianza de un DBCA ----------------------------------------

#Usando los datos anteriores, analizamos el diseno de bloques:

#Contruyendo el modelo lineal
modelo <- aov( REND ~ Genotipo + Block, datos) #rep = bloques
at <- anova(modelo)

#Obteniendo p-valor
pvalor <- at[1, 5]

#Parametros del modelo y Comparacion de medias (Tukey)
df<-df.residual(modelo) #grados de libertad
MSerror<-deviance(modelo)/df #cuadrado medio del error
tmdbca<- HSD.test(datos[,"REND"], datos[, "GENOTIPO"], DFerror = df, MSerror = MSerror, console=TRUE)
tmdbca



