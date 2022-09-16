Algoritmo sin_titulo
	Definir m, i , j , conta Como real
	Definir genZ, pal, car Como Caracter
	Definir vL Como Logico
	
	vL=Verdadero
	
	Hacer
		Escribir "ingrese la palabra a evaluar con caracteres (A, B, C, D)"
		leer pal
		//pal="BCBBABBACBBBBCBB"
		pal=Mayusculas(pal)
		para i=0 hasta Longitud(pal)-1 Hacer
			car= Subcadena(pal,i,i)
			si car <> "A" y car <> "B" y car <> "C" y car <> "D" Entonces
				vL=Falso
			FinSi
		FinPara
	Mientras Que vL=falso
	
	m = raiz(Longitud(pal))
	Dimension genZ[m,m]
	
	conta=0
	
	Para i=0 Hasta m-1 Hacer
		Para j=0 Hasta m-1 Hacer
			genZ[i,j] = Subcadena(pal,conta,conta)
			conta=conta+1
		FinPara
	FinPara
	
	mostrarGen(genZ,m)
	coincidir(genZ,m)
FinAlgoritmo
//--------------------------------------
SubProceso mostrarGen(genZ,m)
	
	Definir i, j Como Entero
	
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			Escribir sin saltar "[", genZ[i,j] "]"
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
//-----------------------------------------

SubProceso coincidir(genZ,m)
	Definir i, j, contD1, contD2 Como Entero
	
	Definir genX, genY Como Caracter
	Dimension genX(m), genY(m)
	
	
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			si i=j Entonces
				genX(i) = genZ(i,j)
			FinSi
			si i+j = m-1
				genY(i) = genZ(i,j)
			FinSi
		FinPara
	FinPara
	
	contD1=0
	contD2=0
	
	para i=0 hasta m-1 Hacer
		si genX(i) = genZ(0,0) Entonces
			contD1 = contD1 +1
		FinSi
	FinPara	
	para i=0 hasta m-1 Hacer
		si genY(i) = genZ(0,m-1) Entonces
			contD2 = contD2 +1
		FinSi
	FinPara
	
	si contD1 = m y contD2 = m Entonces
		Escribir "Se encontro el GEN Z"
	SiNo
		Escribir "No se encontro signo del GEN Z"
	FinSi
FinSubProceso
