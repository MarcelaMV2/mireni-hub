Algoritmo facturacion_descuento_dobles
	
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
	
	
	Si precio <= 0 O cantidad <= 0 O limite <= 0 O porcentaje <= 0 Entonces
		
		Escribir "no se puede realizar el proceso. los datos deben ser positivos."
		
	SiNo
		
		
		total <- precio * cantidad
		
		
		Si total > limite Entonces
			
			descuento <- total * porcentaje / 100
			
		SiNo
			
			descuento <- 0
			
		FinSi
		
		
		final <- total - descuento
		
		
		Escribir "precio unitario: ", precio
		Escribir "cantidad comprada: ", cantidad
		Escribir "monto total de la compra: ", total
		Escribir "descuento aplicado: ", descuento
		Escribir "monto final a pagar: ", final
		
		
	FinSi
	
	
FinAlgoritmo