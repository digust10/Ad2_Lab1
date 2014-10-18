dados = read.csv("salario.csv")
salarioMedia  = aggregate(Salario.Bruto ~ Regiao, data = dados, FUN = mean)
salarioMedia  = salarioMedia[ order(-salarioMedia[,2]), ]
write.csv(salarioMedia, "salarioMedia.csv")

salarioMediana = aggregate(Salario.Bruto ~ Regiao, data = dados, FUN = median)
salarioMediana = salarioMediana[ order(-salarioMediana[,2]), ]
write.csv(salarioMediana, "salarioMediana.csv")