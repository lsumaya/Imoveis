# Script para análise de imóveis com uso de branches

# 1. Leitura do banco de dados

dados = read.csv("imoveis.csv", header = TRUE, sep = ";")
names(dados) = trimws(names(dados))

# ver estrutura
str(dados)
head(dados)


# 2. Gráficos

dados$metragem = as.numeric(dados$metragem)
hist(dados$metragem,
     main = "Histograma da Metragem",
     xlab = "metragem")


# 3. Medidas descritivas
# (PREENCHER NA BRANCH medidas)
