Algoritmo facturacion_descuento_simples
	
	Definir precio, total, descuento, final Como Real
	Definir limite, porcentaje Como Real
	Definir cantidad Como Entero
	
	
	Escribir "ingrese precio unitario:"
	Leer precio
	
	Escribir "ingrese cantidad de unidades:"
	Leer cantidad
	
	Escribir "ingrese monto limite de compra:"
	Leer limite
	
	Escribir "ingrese porcentaje de descuento:"
	Leer porcentaje
	
	
	Si precio <= 0 Entonces
		
		Escribir "no se puede realizar el proceso. el precio debe ser positivo."
		
	FinSi
	
	
	Si cantidad <= 0 Entonces
		
		Escribir "no se puede realizar el proceso. la cantidad debe ser positiva."
		
	FinSi
	
	
	Si limite <= 0 Entonces
		
		Escribir "no se puede realizar el proceso. el limite debe ser positivo."
		
	FinSi
	
	
	Si porcentaje <= 0 Entonces
		
		Escribir "no se puede realizar el proceso. el porcentaje debe ser positivo."
		
	FinSi
	
	
	total <- precio * cantidad
	
	descuento <- 0
	
	
	Si total > limite Entonces
		
		descuento <- total * porcentaje / 100
		
	FinSi
	
	
	final <- total - descuento
	
	
	Escribir "precio unitario: ", precio
	Escribir "cantidad comprada: ", cantidad
	Escribir "monto total de la compra: ", total
	Escribir "descuento aplicado: ", descuento
	Escribir "monto final a pagar: ", final
	
	
FinAlgoritmo