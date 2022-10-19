library(tidyverse)

# Gráfico de dispersão
mtcars |> 
  ggplot() +
  aes(x=disp, y=mpg) +
  geom_point(size=2, color='blue') +
  labs(x= 'disp', y='mpg') 

# Gráfico de barras
mtcars |> 
  ggplot() +
  aes(x=factor(cyl)) +
  geom_bar(fill="steelblue")

# Histograma
mtcars |> 
  ggplot() +
  aes(x=mpg) +
  geom_histogram(bins=10,
                 color="black", fill="white")

# Boxplot
mtcars |> 
  ggplot() +
  aes(x=mpg) +
  geom_boxplot()

mtcars |> 
  ggplot() +
  aes(y=mpg, x=as.factor(vs)) +
  geom_boxplot()

# Gráfico de linhas
head(economics)
economics |> 
  ggplot() +
  aes(x = date, y = pop)+
  geom_line(size = 2)

# Mapas
library(abjData)

pnud_min
dados_geobr <- geobr::read_municipality("AL")
