
# Diseño de Completo al Azar (DCA) ----------------------------------------

library(agricolae)
tratamiento <-c("F1","F2","F3") #fertilizantes
r <- 5 #repeticiones
dca <-design.crd(tratamiento, r, serie =1)
libro <- dca$book

#Exportar en csv
write.csv(x = libro, file = "librodca.csv")
shell.exec("libro-dca.csv")


# Diseño de Bloques Completos al Azar (DBCA) ------------------------------

library(agricolae)
tratamiento <-c("F1","F2","F3") #fertilizantes
r <- 5 #repeticiones
dbca <-design.rcbd(tratamiento, r, serie =1)
libro <- dbca$book

#Exportar en csv
write.csv(x = libro, file = "libro-dbca.csv")
shell.exec("libro-dbca.csv")



# Diseño Cuadrado Latino --------------------------------------------------


library(agricolae)
varieties<-c("perricholi","yungay","maria bonita","tomasa")
dcl <-design.lsd(varieties,serie=2)
libro <- dcl$book

#Exportar en csv
write.csv(x = libro, file = "libro-dcl.csv")
shell.exec("libro-dcl.csv")



# Diseno Factorial bajo un DCA --------------------------------------------

# factorial 2 x 2 x 2 with 5 replications in completely randomized design.
trt<-c(2,2,2)
fdca <- design.ab(trt, r=5, serie=2,design="crd")
libro <- outdesign$book

#Exportar en csv
write.csv(x = libro, file = "libro-fdca.csv")
shell.exec("libro-fdca.csv")


# Diseno Factorial bajo un DBCA -------------------------------------------


# factorial 3 x 2 with 3 blocks
library(agricolae)
trt <- c(3,2) # factorial 3x2
fdbca <-design.ab(trt, r=3, serie=2, design = "rcbd")
libro <- fdbca$book

#Exportar en csv
write.csv(x = libro, file = "libro-fdbca.csv")
shell.exec("libro-fdbca.csv")


# Diseno Factorial bajo un DCL --------------------------------------------


# factorial 3 x 3 in latin square design.
trt <-c(3,3)
fdcl <-design.ab(trt, serie=2, design="lsd")
libro <-outdesign$book

#Exportar en csv
write.csv(x = libro, file = "libro-fdcl.csv")
shell.exec("libro-fdcl.csv")
