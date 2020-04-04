# Aluno: Bruno Pereira Garcia Caputo

setwd("C:/R/Arquivos/Scripts")
getwd()

# Questão 1
# Pesquise e coloque no Script, qual a função que:
# a) permite listar todos os arquivos que estão no diretório de
#   trabalho
path = getwd()
# Pode ser usado a função dir() ou list.files()
# Os argumento são
# * path -> Diretório analisado;
# * pattern -> Expressão regular opcional;
# * all.files -> Se 'false' retorna só arquivos visíveis,
#     se 'true' retorna todos;
# * full.names -> Se 'false' aparece apenas o nome do arquivo,
#     se 'true' aparece o nome do arquivo junto ao 'path' do diretório
dir(path, pattern = NULL, all.files = FALSE, full.names = FALSE)

# b) permite listar os tipos de dados criados
#   (as variáveis de ambiente criadas)
ls()

# c) permite listar os pacotes que já estão carregados
#   na memória para utilização
.packages(TRUE)

# Questão 2
# Crie um vetor de strings com nome de 4 animais,
#   repita o nome de um dos animais, portanto um vetor
#   com 5 palavras:
animals = c("cachorro", "gato", "vaca", "gato", "cavalo")

# a) imprima esse vetor
animals

# b) converta este vetor para fator e imprima na tela
fac_animals <- factor(animals)
fac_animals

# c) apresente os níveis deste fator e uma visão geral dos
#   conteúdos dele
levels(fac_animals)
summary(fac_animals)

# Questao 3
# Crie um vetor de strings com os nomes "Bacharelado" em 3 posições,
#   "Especialização" em uma posição e "Mestrado" em 2 posições,
#   portanto um vetor com 6 palavras:
vec_spec = c(
  "Bacharelado",
  "Especialização",
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

# c) apresente uma visão geral dos conteúdos dele
summary(fac_spec)

# d) altere o nome dos níveis desse fator de Bacharelado para
#   Graduação, Especialização para Lato Sensu e
#   Mestrado para Stricto Sensu
levels(fac_spec) <- c("Graduação", "Lato Sensu", "Stricto Sensu")

# Questao 4
# Crie um dataframe a partir de 3 vetores de tamanho 4 cada:
#  * um com 4 strings (contendo o código de algumas
#   disciplinas do 9º. Período),
#  * um com 4 valores lógicos (TRUE, para a disciplina
#   fácil e FALSE para a que não é)
#  * um com 4 valores floats (notas que você espera
#   tirar na primeira prova dessas disciplinas)
# Faça a nomeação das colunas deste dataframe com
#   "disciplina" "dificuldade" "nota". Mostre este dataframe criado.
# Use a função que apresenta os tipos dos dados deste dataframe.
# Fale sobre o tipo do dado da coluna dos códigos das disciplinas.
cod = c("EC020", "EC214", "AC309", "ES301")
easy = c(TRUE, TRUE, TRUE, TRUE)
grade = c(85.0, 90.0, 100.0, 100.0)
p9_df = data.frame(cod, easy, grade)
colnames(p9_df) <- c("Disciplina", "Dificuldade", "Nota")
str(p9_df)
str(p9_df$Disciplina)

# Questao 5
# Crie um loop (use qualquer solução/estrutura de loop) que
#   verifique se há números maiores que 10 e que são pares
#   no vetor abaixo. Se houver, imprima esse(s) número(s).
#   Se não houver, envie uma mensagem de que não há números com
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
  print("Não tem nesse vetor números pares maiores que 10")
}
vec

vec <- c()
for(i in vec2){
  if(i > 10 && i %% 2 == 0) {
    vec <- c(vec, i)
  }
}
if(length(vec) == 0) {
  print("Não tem nesse vetor números pares maiores que 10")
}
vec

# Questao 6
# Considere a lista abaixo. Crie um loop que imprima cada
#   elemento desta lista. Atenção à disposição da dimensão
#   desta lista.
lst1 <- list(1, 1, 2, 3, 5, 8, 13, 21)
for(i in lst1) {
  print(i)
}

# Questao 7
# Crie um vetor com os 5 primeiros números naturais (0 a 4).
# E usando a mat2 criada acima, faça a multiplicação
#   tradicional do vetor por esta matriz mat2.
# Apresente a soma das linhas da matriz mat1 e a soma
#   das colunas da matriz mat2.
# Apresente a ordenação da matriz mat4.
# Imprima os elementos da matriz mat1 que são superiores a 15.
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
