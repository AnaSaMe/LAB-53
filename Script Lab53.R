#------------------------------LABORATORIO 53----------------------------------
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)
#V9
#-------------------Alumna: Ana Grisel Sanjuan Merida--------------------------
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
#Editar con temas de ggplot2. Comandos estéticos.

#Instalando paquete con los datos
install.packages("gapminder")
install.packages("ggplot2")

#Cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

#Cargando datos a entorno
data("gapminder")

#Filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]

#Haciendo grafica de puntos
p1 <- ggplot(data = gapminder2007,
             mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           color = continent)) +
  geom_point()

#Ver gráfica
p1

#Temas básicos de ggplot2
#Agregamos capa al gráfico p1
#Añadimos en la capa el theme_bm()
p1 + theme_bw()

#Para un tema minimalista, la capa será minimal
p1 + theme_minimal()

#Más temas
install.packages('ggthemes')
library(ggthemes)

#Temas y colores
#Gráficos como el periódico Economist
#Se agrega una capa scale_color para colorear el gráfico
p1 + theme_economist() + scale_color_economist()

#Gráficos tema excel new
#Se agrega una capa scale_color para colorear el gráfico
p1 + theme_excel_new() + scale_color_excel_new()

#Probando otros temas y colores con autocompletado
#Solarized
p1 + theme_solarized() + scale_color_solarized()

#Stata
p1 + theme_stata() + scale_color_stata()

#Wsj
p1 + theme_wsj() + scale_color_wsj()

#calc
p1 + theme_calc() + scale_color_calc()

#Fivethirtyeigh
p1 + theme_fivethirtyeight() + scale_color_fivethirtyeight()

#-----------------------FIN LABORATORIO 53------------------------------

