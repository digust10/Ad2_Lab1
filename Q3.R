dados = read.csv("salario.csv")
salario = dados$Salario.Bruto
summary(salario)
boxplot(salario)
hist(salario)
density(salario)
