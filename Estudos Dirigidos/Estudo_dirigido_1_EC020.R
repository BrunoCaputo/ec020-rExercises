# Aluno: Bruno Pereira Garcia Caputo

setwd("C:/R/Arquivos/Scripts")
getwd()

# Quest�o 1
# Pesquise e coloque no Script, qual a fun��o que:
# a) permite listar todos os arquivos que est�o no diret�rio de
#   trabalho
path = getwd()
# Pode ser usado a fun��o dir() ou list.files()
# Os argumento s�o
# * path -> Diret�rio analisado;
# * pattern -> Express�o regular opcional;
# * all.files -> Se 'false' retorna s� arquivos vis�veis,
#     se 'true' retorna todos;
# * full.names -> Se 'false' aparece apenas o nome do arquivo,
#     se 'true' aparece o nome do arquivo junto ao 'path' do diret�rio
dir(path, pattern = NULL, all.files = FALSE, full.names = FALSE)

# b) permite listar os tipos de dados criados
#   (as vari�veis de ambiente criadas)
ls()

# c) permite listar os pacotes que j� est�o carregados
#   na mem�ria para utiliza��o
.packages(TRUE)

# Quest�o 2
# Crie um vetor de strings com nome de 4 animais,
#   repita o nome de um dos animais, portanto um vetor
#   com 5 palavras:
animals = c("cachorro", "gato", "vaca", "gato", "cavalo")

# a) imprima esse vetor
animals

# b) converta este vetor para fator e imprima na tela
fac_animals <- factor(animals)
fac_animals

# c) apresente os n�veis deste fator e uma vis�o geral dos
#   conte�dos dele
levels(fac_animals)
summary(fac_animals)

# Questao 3
# Crie um vetor de strings com os nomes "Bacharelado" em 3 posi��es,
#   "Especializa��o" em uma posi��o e "Mestrado" em 2 posi��es,
#   portanto um vetor com 6 palavras:
vec_spec = c(
  "Bacharelado",
  "Especializa��o",
  "Bacharelado",
  "Mestrado",
  "Bacharelado",
  "Mestrado"
)

# a) imprima esse vetor
vec_spec

# b) converta este vetor para um fator ordenado e o imprima na tela
fac_spec = factor(vec_spec, order = TRUE)
fac_spec

# c) apresente uma vis�o geral dos conte�dos dele
summary(fac_spec)

# d) altere o nome dos n�veis desse fator de Bacharelado para
#   Gradua��o, Especializa��o para Lato Sensu e
#   Mestrado para Stricto Sensu
levels(fac_spec) <- c("Gradua��o", "Lato Sensu", "Stricto Sensu")

# Questao 4
# Crie um dataframe a partir de 3 vetores de tamanho 4 cada:
#  * um com 4 strings (contendo o c�digo de algumas
#   disciplinas do 9�. Per�odo),
#  * um com 4 valores l�gicos (TRUE, para a disciplina
#   f�cil e FALSE para a que n�o �)
#  * um com 4 valores floats (notas que voc� espera
#   tirar na primeira prova dessas disciplinas)
# Fa�a a nomea��o das colunas deste dataframe com
#   "disciplina" "dificuldade" "nota". Mostre este dataframe criado.
# Use a fun��o que apresenta os tipos dos dados deste dataframe.
# Fale sobre o tipo do dado da coluna dos c�digos das disciplinas.
cod = c("EC020", "EC214", "AC309", "ES301")
easy = c(TRUE, TRUE, TRUE, TRUE)
grade = c(85.0, 90.0, 100.0, 100.0)
p9_df = data.frame(cod, easy, grade)
colnames(p9_df) <- c("Disciplina", "Dificuldade", "Nota")
str(p9_df)
str(p9_df$Disciplina)

# Questao 5
# Crie um loop (use qualquer solu��o/estrutura de loop) que
#   verifique se h� n�meros maiores que 10 e que s�o pares
#   no vetor abaixo. Se houver, imprima esse(s) n�mero(s).
#   Se n�o houver, envie uma mensagem de que n�o h� n�meros com
#   este adjetivo.
vec1 <- c(12, 3, 14, 19, 34, 2, 25)
vec2 <- c(21, 3, 15, 19, 37, 2, 25)
vec <- c()
for(i in vec1){
  if(i > 10 && i %% 2 == 0) {
    vec <- c(vec, i)
  }
}
if(length(vec) == 0) {
  print("N�o tem nesse vetor n�meros pares maiores que 10")
}
vec

vec <- c()
for(i in vec2){
  if(i > 10 && i %% 2 == 0) {
    vec <- c(vec, i)
  }
}
if(length(vec) == 0) {
  print("N�o tem nesse vetor n�meros pares maiores que 10")
}
vec

# Questao 6
# Considere a lista abaixo. Crie um loop que imprima cada
#   elemento desta lista. Aten��o � disposi��o da dimens�o
#   desta lista.
lst1 <- list(1, 1, 2, 3, 5, 8, 13, 21)
for(i in lst1) {
  print(i)
}

# Questao 7
# Crie um vetor com os 5 primeiros n�meros naturais (0 a 4).
# E usando a mat2 criada acima, fa�a a multiplica��o
#   tradicional do vetor por esta matriz mat2.
# Apresente a soma das linhas da matriz mat1 e a soma
#   das colunas da matriz mat2.
# Apresente a ordena��o da matriz mat4.
# Imprima os elementos da matriz mat1 que s�o superiores a 15.
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat2 <- t(mat1)   # transposta de mat1

natural = rep(0:4)
mult = mat2 * natural

row_mat1 <- rowSums(mat1)
col_mat2 <- colSums(mat2)
row_mat1
col_mat2

mat4 <- mat1 %*% mat2
order_mat4 <- order(mat4)
order_mat4

for(i in mat1) {
  if(i > 15) {
    print(i)
  }
}
