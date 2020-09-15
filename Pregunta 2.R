#La concentración en plomo en partes por millón en la corriente 
#sanguínea de un individuo tiene de media 0.25 y una desviación 
#típica de 0.11. Supongamos que dicha concentración sigue una 
#ley Normal. Se pide:

 #1.Identificar las variables para el experimento y el vector
#inicial (0:1, con un rango de 0.01), N y DS

x = seq(0, 1, by = .01)
x
media<- 0.25
desviacion<- 0.11

valores <- dnorm(x, media, desviacion)
valores


#Media = 0.25
# DS = 0.11


#2.	Graficar la distribución normal de la muestra donde n y ds 
#se definen en el punto 1. 

plot(x, valores, type="l", main="Distribución normal", xlab=
       "Valores de Distribucion", ylab="Valores Sanguineos")
?dnorm


# 3.	Una concentración superior o igual a 0.6 partes por millón 
#(x>=0.6) se considera extremadamente alta ¿Cuál es la 
#probabilidad de que un individuo seleccionado al azar esté
#incluido en esa categoría? 

1- pnorm(0.6,0.25,.11)
# respuesta  0.0007317683

# 4.	Obtener la probabilidad de que la concentración en plomo, 
# en partes por millón, de un individuo sea inferior a 0.15 
#(x<=0.15)

pnorm(0.15,0.25,.11)
#Respuesta 0.1816511

#5.	Determinar la concentración mínima del 30% de los individuos
#con más concentración (p=0.30)

qnorm(0.3, 0.25, 0.11)
# respueta 0.1923159

