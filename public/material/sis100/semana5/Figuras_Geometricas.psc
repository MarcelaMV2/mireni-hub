Algoritmo Figuras_Geometricas
	Definir opcion Como Entero
	Definir lado, base, altura, lado1, lado2, lado3, radio Como Real
	Definir area, perimetro Como Real
	Escribir '===== FIGURAS GEOMETRICAS ====='
	Escribir '1. Cuadrado'
	Escribir '2. Rectangulo'
	Escribir '3. Triangulo'
	Escribir '4. Circulo'
	Escribir 'Seleccione una opcion:'
	Leer opcion
	Segun opcion Hacer
		1:
			Escribir 'Ingrese lado:'
			Leer lado
			Si lado>0 Entonces
				area <- lado^2
				perimetro <- lado*4
				Escribir 'Area: ', area
				Escribir 'Perimetro: ', perimetro
			SiNo
				Escribir 'No se puede calcular. El lado debe ser positivo.'
			FinSi
		2:
			Escribir 'Ingrese base:'
			Leer base
			Escribir 'Ingrese altura:'
			Leer altura
			Si base>0 Y altura>0 Entonces
				area <- base*altura
				perimetro <- 2*(base+altura)
				Escribir 'Area: ', area
				Escribir 'Perimetro: ', perimetro
			SiNo
				Escribir 'No se puede calcular. Los valores deben ser positivos.'
			FinSi
		3:
			Escribir 'Ingrese base:'
			Leer base
			Escribir 'Ingrese altura:'
			Leer altura
			Escribir 'Ingrese lado 1:'
			Leer lado1
			Escribir 'Ingrese lado 2:'
			Leer lado2
			Escribir 'Ingrese lado 3:'
			Leer lado3
			Si base>0 Y altura>0 Y lado1>0 Y lado2>0 Y lado3>0 Entonces
				area <- (base*altura)/2
				perimetro <- lado1+lado2+lado3
				Escribir 'Area: ', area
				Escribir 'Perimetro: ', perimetro
			SiNo
				Escribir 'No se puede calcular. Todos los valores deben ser positivos.'
			FinSi
		4:
			Escribir 'Ingrese radio:'
			Leer radio
			Si radio>0 Entonces
				area <- PI*radio^2
				perimetro <- 2*PI*radio
				Escribir 'Area: ', area
				Escribir 'Circunferencia: ', perimetro
			SiNo
				Escribir 'No se puede calcular. El radio debe ser positivo.'
			FinSi
		De Otro Modo:
			Escribir 'La opcion seleccionada no existe.'
	FinSegun
FinAlgoritmo
