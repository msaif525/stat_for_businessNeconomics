
library(tidyverse)
library(gapminder)
library(ggthemes)
library(GGally)


# From the help page:
data("mtcars")
ggpairs(mtcars, columns = c(1,3,4,6), ggplot2::aes(alpha=0.5,colour=factor(vs)),
        columnLabels =c("MPG","Displacement","Horse power","Weight"))+
  theme_stata()


mtcars$vs <- factor(
  mtcars$vs,
  levels = c(0, 1),
  labels = c("V-shaped", "Straight")
)


ggpairs(
  mtcars,
  columns = c(1, 3, 4, 6),
  ggplot2::aes(alpha = 0.5, colour = vs),
  columnLabels = c("MPG", "Displacement", "Horse power", "Weight")
) +
  theme_stata() +
  scale_color_stata()
