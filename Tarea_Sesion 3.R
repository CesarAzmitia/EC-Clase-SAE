#Primera pregunta

#Por larga experiencia se ha determinado que la meningitis por 
#salmonelas, enfermedad rara, pero muy grave de los lactantes, 
#produce una mortalidad del 60%. Durante un brote epidémico en 
#una gran ciudad, en un hospital de dicha ciudad, ingresaron 16 
#niños lactantes atacados por la enfermedad

#1. Identificar las variables necesarias para el experimento
#(n, p, q), donde la probabilidad de éxito (p) es el número de 
#pacientes que sobreviven.

n=16;
p=0.4;
x=0:n;
prob=dbinom(x,n,p); 
barplot(prob, main = "Probabilida de Sobrevivencia de Pacientes")


#2.	Graficar la distribución binomial de la muestra donde size=16, n  y 
#prob están definidas en el punto 1. 


#3.	Probabilidad de que sobrevivan todos los pacientes (n=16)

n=16;
p=0.4;
x=16:n;
prob=dbinom(x,n,p); 
barplot(prob, main = "Probabilidad de Sobrevivencia de Pacientes")

plot (x, prob, type="b", main = "Probabilidad del 100%", 
      xlab = "Numero de Pacientes", ylab = "Probabilidad del 100%")
qbinom(prob,n,p)
prob

pbinom(x,n,p)

#Respuesta 4.294967e-07

#4.	Probabilidad de que sobrevivan más de la mitad de los pacientes 
#(P[X>0) = 1-P[X<=8])

n=16;
p=0.4;
x<-8:n;
1-pbinom(x,n,p); 

