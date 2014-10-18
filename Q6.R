dados = read.csv("salario.csv")
profissionaisSudeste =subset(dados,Regiao == "Sudeste")
salarioMediana = aggregate(Salario.Bruto ~ UF, data = profissionaisSudeste, FUN = median)
salarioMediana = salarioMediana[ order(-salarioMediana[,2]), ]
salarioMediana

profissionaisRJ =subset(dados,UF == "RJ")
salarioMediana = aggregate(Salario.Bruto ~ Cidade, data = profissionaisRJ, FUN = median)
salarioMediana = salarioMediana[ order(-salarioMediana[,2]), ]
salarioMediana