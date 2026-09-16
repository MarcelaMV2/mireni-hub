Algoritmo Serie_Numerica_Mientras
	Definir n, i, se, cp, ci, suma Como Entero
	Escribir 'Ingrese la cantidad de terminos:'
	Leer n
	Mientras n<=0 Hacer
		Escribir 'Error. La cantidad debe ser positiva:'
		Leer n
	FinMientras
	i <- 1
	suma <- 0
	cp <- 0
	ci <- 0
	Escribir 'Serie:'
	Mientras i<=n Hacer
		se <- i^2+1
		Escribir se, ' + 'Sin Saltar
		suma <- suma+se
		Si se MOD 2=0 Entonces
			cp <- cp+1
		SiNo
			ci <- ci+1
		FinSi
		i <- i+1
	FinMientras
	Escribir ''
	Escribir 'Suma total = ', suma
	Escribir 'Cantidad de pares = ', cp
	Escribir 'Cantidad de impares = ', ci
FinAlgoritmo
