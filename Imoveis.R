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
