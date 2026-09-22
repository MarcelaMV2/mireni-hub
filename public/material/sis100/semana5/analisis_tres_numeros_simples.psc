Algoritmo analisis_tres_numeros_simples
	
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
		
	FinSi
	
	
	Si a = b O a = c O b = c Entonces
		
		Escribir "no se puede realizar el proceso. los numeros deben ser diferentes."
		
	FinSi
	
	
	Si a > b Y a > c Entonces
		
		mayor <- a
		
	FinSi
	
	
	Si b > a Y b > c Entonces
		
		mayor <- b
		
	FinSi
	
	
	Si c > a Y c > b Entonces
		
		mayor <- c
		
	FinSi
	
	
	Si a < b Y a < c Entonces
		
		menor <- a
		
	FinSi
	
	
	Si b < a Y b < c Entonces
		
		menor <- b
		
	FinSi
	
	
	Si c < a Y c < b Entonces
		
		menor <- c
		
	FinSi
	
	
	Si a > menor Y a < mayor Entonces
		
		intermedio <- a
		
	FinSi
	
	
	Si b > menor Y b < mayor Entonces
		
		intermedio <- b
		
	FinSi
	
	
	Si c > menor Y c < mayor Entonces
		
		intermedio <- c
		
	FinSi
	
	
	diferencia <- mayor - menor
	
	
	Escribir "numero mayor: ", mayor
	Escribir "numero intermedio: ", intermedio
	Escribir "numero menor: ", menor
	Escribir "diferencia: ", diferencia
	
FinAlgoritmo