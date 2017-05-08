
# Analisis de Varianza ----------------------------------------------------

#Analisis de Varianza para un DCA
library(sweetpotato)
fp <- file.choose()
datos <- readxl::read_excel(path = "virusdca.xlsx", sheet = "libro",)  #cargar los datos en excel
datos <- as.data.frame(datos)
trt <- "virus"
variable <- "rendimiento"
datos[, trt] <- as.character(datos[, trt])

#Contruyendo el modelo
model <- aov(datos[, variable] ~ datos[, trt])
model$terms[[2]] <- variable
at <- anova(model)
rownames(at)[1] <- trt

#Obteniendo p valor
pvalor <- at[1, 5]
#agricolae::HSD.test(datos[, variable], datos[, trt], at[2, 1], at[2, 3])

#Parametros del modelo
df<-df.residual(model) #grados de libertad
MSerror<-deviance(model)/df #cuadrado medio del error
outHSD<- HSD.test(model, datos[, trt] , DFerror = df, MSerror = MSerror, console=TRUE)
outHSD





