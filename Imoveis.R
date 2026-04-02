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

# Análise de Proporções (Valores acima da média)
# Preço
tabela_preco <- prop.table(table(dados$preco > mean(dados$preco)))
print("Proporção de Preços acima da média:")
print(tabela_preco)

# Metragem
tabela_metragem <- prop.table(table(dados$metragem > mean(dados$metragem)))
print("Proporção de Metragem acima da média:")
print(tabela_metragem)

# Idade
tabela_idade <- prop.table(table(dados$idade > mean(dados$idade)))
print("Proporção de Idade acima da média:")
print(tabela_idade)

# Itens Embutidos
tabela_itens <- prop.table(table(dados$itens_embutidos > mean(dados$itens_embutidos)))
print("Proporção de Itens acima da média:")
print(tabela_itens)

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
