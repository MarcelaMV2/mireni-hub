Algoritmo Analisis_Digitos
	Definir n, dig,ctd,suma,supa,suim Como Entero
	Escribir 'Ingrese un numero entero positivo entre 5 y 10 digitos:'
	Leer n
	Mientras n<10000 O n>9999999999 Hacer
		Escribir 'Numero invalido'
		Escribir 'Ingrese nuevamente un numero entre 5 y 10 digitos:'
		Leer n
	FinMientras
	ctd <- 0
	suma <- 0
	supa <- 0
	suim <- 0
	Mientras n>0 Hacer
		dig <- n MOD 10
		ctd <- ctd+1
		suma <- suma+dig
		Si dig MOD 2=0 Entonces
			supa <- supa+dig
		SiNo
			suim <- suim+dig
		FinSi
		n <- Trunc(n/10)
	FinMientras
	Escribir 'Cantidad de digitos: ', ctd
	Escribir 'Suma total de digitos: ', suma
	Escribir 'Suma de digitos pares: ', supa
	Escribir 'Suma de digitos impares: ', suim
FinAlgoritmo
