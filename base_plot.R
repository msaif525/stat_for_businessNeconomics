
#par(mar = c(1.8, 4, 2, 2))

#curve(dnorm(x,20,3),xlim = c(10,30),lwd=2,xaxt="n",xlab = "",ylab =expression("f(x)"),yaxt="n",main="Normal curve")
#abline(v=20)
#text(20, -1, expression(mu))
#mtext(expression(mu),side=1,line=1,at=20)


data_csv <- "Day,Plant A,Plant B,Plant C
1,15,22,18
2,18,25,21
3,16,23,19
4,19,27,24
5,17,24,20
6,20,29,26
7,18,26,22
8,21,30,27
9,19,28,23
10,22,32,29"


df <- read.csv(text = data_csv)


library(tidyverse)

df %>% gather(key = "Plant",value = defect_count,-Day) %>% 
  ggplot(aes(Plant,defect_count))+
  geom_boxplot(fill="steelblue")+
  theme_classic()+
  scale_y_continuous(limits = c(10, 36), breaks = seq(10, 36, by = 5))+
  labs(y="Number of defective")+
  theme(axis.text = element_text(size = 20,colour = "black"),
        axis.title = element_text(size = 20,colour = "black"))

