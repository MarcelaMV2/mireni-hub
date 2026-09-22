Algoritmo Sistema_Bancario
	Definir opc Como Entero
	Definir saldo, monto, meses, beneficio, nuevosaldo Como Real
	Escribir 'Ingrese saldo inicial:'
	Leer saldo
	Si saldo>0 Entonces
		Escribir '===== MENU BANCARIO ====='
		Escribir '1. Consultar saldo'
		Escribir '2. Depositar'
		Escribir '3. Retirar'
		Escribir '4. Calcular beneficio'
		Escribir 'Seleccione una opcion:'
		Leer opc
		Segun opc Hacer
			1:
				Escribir 'Saldo disponible: Bs ', saldo
			2:
				Escribir 'Ingrese monto a depositar:'
				Leer monto
				Si monto>0 Entonces
					nuevosaldo <- saldo+monto
					Escribir 'Nuevo saldo: Bs ', nuevosaldo
				SiNo
					Escribir 'No se puede realizar el deposito.'
				FinSi
			3:
				Escribir 'Ingrese monto a retirar:'
				Leer monto
				Si monto>0 Entonces
					Si monto>saldo Entonces
						nuevosaldo <- saldo
						Escribir 'No se puede realizar el retiro. Saldo insuficiente.',nuevosaldo
					SiNo
						nuevosaldo <- saldo-monto
						Escribir 'Nuevo saldo: Bs ', nuevosaldo
					FinSi
				SiNo
					Escribir 'No se puede realizar el retiro.'
				FinSi
			4:
				Escribir 'Ingrese cantidad de meses:'
				Leer meses
				Si meses>0 Entonces
					beneficio <- saldo*0.05*(meses/12)
					Escribir 'Beneficio generado: Bs ', beneficio
				SiNo
					Escribir 'No se puede calcular el beneficio.'
				FinSi
			De Otro Modo:
				Escribir 'La opcion no existe.'
		FinSegun
	SiNo
		Escribir 'No se puede iniciar la cuenta con saldo negativo.'
	FinSi
FinAlgoritmo
