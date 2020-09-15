#El número de capturas diarias de loros en la cuenca del Amazonas 
#para su utilización como animales domésticos sigue una 
#distribución de Poisson de parámetro 5.  Calcular las siguientes 
#probabilidades:
 
#1.	Identificar las variables para el experimento (λ) y 
#el vector inicial (0:5) 

xpoison = 0:5
lambda = 5

distpoison <- dpois(xpoison, lambda)

plot (xpoison, distpoison, type="h", col=c("red"), xlab = xpoison)
barplot(distpoison)

#2.	No se produzcan más de cuatro capturas en un día

xpoison = 5
lambda = 4

distpoison <- ppois(xpoison, lambda)

plot (xpoison, distpoison, type="h", col=c("blue"), Ylab = "xpoison", xlab = "Cantidad de Capturas")
barplot(distpoison, main = "Probabilidad de mas de Cuatro Capturas", ylab = "Probabilidad", xlab = "Cantidad de Capturas")

#respueta  0.7851304

#3.	Se produzcan al menos cuatro capturas en un día

1 - ppois(lambda, xpoison)

#respuetas [1] 0.5595067

#4.	Se produzcan menos de cuatro capturas en un día

xpoison = 5
lambda = 3

distpoison <- ppois(xpoison, lambda)
#Respuesta [1] 0.9160821



