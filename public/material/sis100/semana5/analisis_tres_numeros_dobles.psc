Algoritmo analisis_tres_numeros_dobles
	
	Definir a, b, c Como Entero
	Definir mayor, menor, intermedio, diferencia Como Entero
	
	Escribir "ingrese el primer numero:"
	Leer a
	
	Escribir "ingrese el segundo numero:"
	Leer b
	
	Escribir "ingrese el tercer numero:"
	Leer c
	
	
	Si a <= 0 O b <= 0 O c <= 0 Entonces
		
		Escribir "no se puede realizar el proceso. los numeros deben ser positivos."
		
	SiNo
		
		Si a = b O a = c O b = c Entonces
			
			Escribir "no se puede realizar el proceso. los numeros deben ser diferentes."
			a<-0
			b <- 0
			c<-0
			
		SiNo
			
			
			Si a > b Entonces
				
				Si a > c Entonces
					
					mayor <- a
					
				SiNo
					
					mayor <- c
					
				FinSi
				
			SiNo
				
				Si b > c Entonces
					
					mayor <- b
					
				SiNo
					
					mayor <- c
					
				FinSi
				
			FinSi
			
			
			Si a < b Entonces
				
				Si a < c Entonces
					
					menor <- a
					
				SiNo
					
					menor <- c
					
				FinSi
				
			SiNo
				
				Si b < c Entonces
					
					menor <- b
					
				SiNo
					
					menor <- c
					
				FinSi
				
			FinSi
			
			
			Si a <> mayor Y a <> menor Entonces
				
				intermedio <- a
				
			SiNo
				
				Si b <> mayor Y b <> menor Entonces
					
					intermedio <- b
					
				SiNo
					
					intermedio <- c
					
				FinSi
				
			FinSi
			
			
			diferencia <- mayor - menor
			
			
			Escribir "numero mayor: ", mayor
			Escribir "numero intermedio: ", intermedio
			Escribir "numero menor: ", menor
			Escribir "diferencia: ", diferencia
			
		FinSi
		
	FinSi
	
	
FinAlgoritmo