# Script referente a atividade de extensão 3
#Carregando pacotes
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
if(!require(dplyr)) install.packages("dplyr") # Necessário para a função glimpse
library(dplyr)
install.packages("usethis")
library("usethis")

#Leitura dos dados
dados = read.csv("imoveis.csv",header = T,sep = ";")
names(dados) <- trimws(names(dados))

#Análise descritiva - variáveis quantitativas
summary(dados)
str(dados)
glimpse(dados)
View(head(dados))

# Histograma do preço
ggplot(dados, aes(x = preco)) +
  geom_histogram(bins = 10, fill = "purple", color = "white") +
  labs(title = "Histograma do Preço", x = "Preço", y = "Frequência")

# Dispersão: Imposto (y) vs Metragem (x)
ggplot(dados, aes(x = metragem, y = imposto_anual)) +
  geom_point(color = "purple", size = 2) +
  labs(title = "Dispersão: Imposto Anual vs Metragem", 
       x = "Metragem (m²)", 
       y = "Imposto Anual (R$)") +
  theme_minimal()

