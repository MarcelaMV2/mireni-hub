Algoritmo Numero_Capicua
	Definir n, original, inv, dig, ctd Como Entero
	Repetir
		Escribir 'Ingrese un numero entero positivo entre 3 y 6 digitos:'
		Leer n
	Mientras Que n<100 o n>999999
	ctd <- 0
	original <- n
	Mientras n>0 Hacer
		n <- Trunc(n/10)
		ctd <- ctd+1
	FinMientras
	inv <- 0
	n <- original
	Repetir
		dig <- n MOD 10
		inv <- inv*10+dig
		n <- Trunc(n/10)
	Mientras Que n<>0
	Escribir 'Numero original: ', original
	Escribir 'Numero invertido: ', inv
	Si original=inv Entonces
		Escribir 'El numero es CAPICUA'
	SiNo
		Escribir 'El numero NO es CAPICUA'
	FinSi
FinAlgoritmo
