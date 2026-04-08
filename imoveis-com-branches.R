# Script para análise de imóveis com uso de branches

# 1. Leitura do banco de dados

dados = read.csv("imoveis.csv", header = TRUE, sep = ";")
names(dados) = trimws(names(dados))

# ver estrutura
str(dados)
head(dados)


# 2. Gráficos
# (PREENCHER NA BRANCH graficos)



# 3. Medidas descritivas
media_imposto = mean(dados$imposto_anual, na.rm = TRUE)
mediana_imposto = median(dados$imposto_anual, na.rm = TRUE)
desvio_imposto = sd(dados$imposto_anual, na.rm = TRUE)
