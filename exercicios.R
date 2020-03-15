# Exercicio 4

setwd("C:/R/Arquivos")
getwd()

# Questão 1
# Dê um exemplo de uso do operador de resto de divisão (módulo).
# Um exemplo de uso pode ser para verificar se o número é par ou não
# Se o resultado do resto da divisão por 2 for igual a zero,
# o número é par, se for diferente, é ímpar
mod = 15%%2   #ímpar -> Resultado diferente de 0
mod
mod = 20%%2   #par -> Resultado igual a 0
mod

# Questão 2
# Crie um vetor com os 30 primeiros números naturais (0 a 29).
vec = rep(0:29)
vec
is.vector(vec)

# Questão 3
# Crie uma matriz com 5 linhas, 2 colunas, orientada por linha e
# com as dezenas de 10 a 100 (10...20...30..40.........100).
dezenas = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
mat_dezenas = matrix(data = dezenas, nrow = 5, ncol = 2, byrow = T)
mat_dezenas

# Questão 4
# Transforme esta matriz em um vetor.
vec_mat_dezenas = 
  c(
    mat_dezenas[1,],
    mat_dezenas[2,],
    mat_dezenas[3,],
    mat_dezenas[4,],
    mat_dezenas[5,]
  )
vec_mat_dezenas

# Questão 5
# Crie uma lista unindo o vetor (criado em 2) e a matriz (criada em 3).
lista_q5 = list(vec, mat_dezenas)
lista_q5

# Questão 6
# Dê um exemplo de uso da função cbind.
mat1_q6 = matrix(c(1, 2, 3, 4, 5, 6),nr=3)
mat1_q6
mat2_q6 = matrix(c(7, 8, 9, 10, 11, 12),nr=3)
mat2_q6
cbind(mat1_q6, mat2_q6)

# Questão 7
# Mostre na tela o dataframe iris, apresente quantas dimensões
# ele tem e imprima um resumo dele.
View(iris)
dim(iris)
summary(iris)

# Questão 8
# Usando a função read.table() leia o arquivo do link
# abaixo para uma dataframe.
# http://data.princeton.edu/wws509/datasets/effort.dat
# Dica: consulte o help para aprender como usar a função read.table()
path = file.path(getwd(), "effort.dat") # Constrói o caminho do arquivo a partir do diretório
countries = read.table(path)
countries

# Questão 9
# Transforme o dataframe anterior, em um dataframe nomeado
# com os seguintes labels: c("Configuração", "Esforço", "Mudança")
colnames(countries) <- c("Configuração", "Esforço", "Mudança")
countries

# Questão 10
# Usando a função subset(), crie um novo dataframe com o
# conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: acesse o help...?subset
df_q10 = subset(iris, Sepal.Length > 7)
df_q10






