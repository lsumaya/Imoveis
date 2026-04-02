# Script referente a atividade de extensão 3
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
install.packages("usethis")
library("usethis")

#Leitura dos dados
dados = read.csv("imoveis.csv",header = T,sep = ";")
attach(dados)
names(dados) <- trimws(names(dados))

#Análise descritiva - variáveis quantitativas
summary(dados)
str(dados)
# Histograma do preço
ggplot(dados, aes(x = preco)) +
  geom_histogram(bins = 10, fill = "purple", color = "white") +
  labs(title = "Histograma do Preço", x = "Preço", y = "Frequência")

# Dispersão: Imposto (y) vs Metragem (x)
ggplot(dados, aes(x = metragem, y = imposto_anual)) +
  geom_point() +
  labs(title = "Dispersão: Imposto vs Metragem", x = "Metragem", y = "Imposto")
