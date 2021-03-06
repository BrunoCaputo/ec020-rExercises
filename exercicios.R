# Exercicio 4

setwd("C:/R/Arquivos")
getwd()

# Quest�o 1
# D� um exemplo de uso do operador de resto de divis�o (m�dulo).
# Um exemplo de uso pode ser para verificar se o n�mero � par ou n�o
# Se o resultado do resto da divis�o por 2 for igual a zero,
# o n�mero � par, se for diferente, � �mpar
mod = 15%%2   #�mpar -> Resultado diferente de 0
mod
mod = 20%%2   #par -> Resultado igual a 0
mod

# Quest�o 2
# Crie um vetor com os 30 primeiros n�meros naturais (0 a 29).
vec = rep(0:29)
vec
is.vector(vec)

# Quest�o 3
# Crie uma matriz com 5 linhas, 2 colunas, orientada por linha e
# com as dezenas de 10 a 100 (10...20...30..40.........100).
dezenas = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
mat_dezenas = matrix(data = dezenas, nrow = 5, ncol = 2, byrow = T)
mat_dezenas

# Quest�o 4
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

# Quest�o 5
# Crie uma lista unindo o vetor (criado em 2) e a matriz (criada em 3).
lista_q5 = list(vec, mat_dezenas)
lista_q5

# Quest�o 6
# D� um exemplo de uso da fun��o cbind.
mat1_q6 = matrix(c(1, 2, 3, 4, 5, 6),nr=3)
mat1_q6
mat2_q6 = matrix(c(7, 8, 9, 10, 11, 12),nr=3)
mat2_q6
cbind(mat1_q6, mat2_q6)

# Quest�o 7
# Mostre na tela o dataframe iris, apresente quantas dimens�es
# ele tem e imprima um resumo dele.
View(iris)
dim(iris)
summary(iris)

# Quest�o 8
# Usando a fun��o read.table() leia o arquivo do link
# abaixo para uma dataframe.
# http://data.princeton.edu/wws509/datasets/effort.dat
# Dica: consulte o help para aprender como usar a fun��o read.table()
path = file.path(getwd(), "effort.dat") # Constr�i o caminho do arquivo a partir do diret�rio
countries = read.table(path)
countries

# Quest�o 9
# Transforme o dataframe anterior, em um dataframe nomeado
# com os seguintes labels: c("Configura��o", "Esfor�o", "Mudan�a")
colnames(countries) <- c("Configura��o", "Esfor�o", "Mudan�a")
countries

# Quest�o 10
# Usando a fun��o subset(), crie um novo dataframe com o
# conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: acesse o help...?subset
df_q10 = subset(iris, Sepal.Length > 7)
df_q10






