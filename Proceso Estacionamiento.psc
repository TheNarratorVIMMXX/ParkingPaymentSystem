Proceso Estacionamiento
	Definir horario1,horario2,hrs1,mns1,hrs2,mns2,r,time,total,i,minEnt,minSal,durMin,resto, aux Como Entero;
	i<-0;
	Repetir
		total<-0;
		r<-0;
		Escribir "Hora de entrada (1-12):"; 
		Leer hrs1;
		Mientras hrs1<1 O hrs1>12 Hacer
			Escribir "ERROR: hora inválida.";
			Leer hrs1;
		FinMientras;
		Escribir "Minuto de entrada (0-59):";
		Leer mns1;
		Mientras mns1<0 O mns1>59 Hacer
			Escribir "ERROR: minuto inválido.";
			Leer mns1;
		FinMientras;
		Escribir "1. AM 2. PM"; Escribir "AM/PM de entrada:";
		Leer horario1;
		Mientras horario1<>1 Y horario1<>2 Hacer
			Escribir "ERROR: elige 1 ó 2.";
			Leer horario1;
		FinMientras;
		Si horario1=1 Entonces
			Si hrs1=12 Entonces
				hrs1<-0; 
			FinSi
		Sino
			Si hrs1<>12 Entonces 
				hrs1<-hrs1+12; 
			FinSi;
		FinSi
		minEnt<-hrs1*60+mns1;
		Escribir "Hora de salida (1-12):";
		Leer hrs2;
		Mientras hrs2<1 O hrs2>12 Hacer
			Escribir "ERROR: hora inválida."; 
			Leer hrs2;
		FinMientras;
		Escribir "Minuto de salida (0-59):";
		Leer mns2;
		Mientras mns2<0 O mns2>59 Hacer
			Escribir "ERROR: minuto inválido."; 
			Leer mns2;
		FinMientras;
		Escribir "1. AM 2. PM"; 
		Escribir "AM/PM de salida:"; 
		Leer horario2;
		Mientras horario2<>1 Y horario2<>2 Hacer
			Escribir "ERROR: elige 1 ó 2."; 
			Leer horario2;
		FinMientras;
		Si horario2=1 Entonces
			Si hrs2=12 Entonces 
				hrs2<-0; 
			FinSi;
		Sino
			Si hrs2<>12 Entonces 
				hrs2<-hrs2+12;
			FinSi;
			FinSi
		minSal<-hrs2*60+mns2;
		durMin<-minSal-minEnt;
		Si durMin<=0 Entonces
			Escribir "ERROR: la salida debe ser después de la entrada."; 
		SiNo
			time<-Trunc(durMin/60);
			aux<-time;
		resto<-durMin - time*60;
		Si resto>0 Entonces
			time<-time+1; 
		FinSi;
		Si time>=8 Entonces
			total<-120;
		Sino
			Si time<=2 Entonces 
				total<-time*10;
			Sino 
				total<-2*10+(time-2)*5; 
			FinSi;
		FinSi;
		Escribir "Las horas en el estacionamiento fueron de ",aux;
		Escribir "El total a pagar es $",total," MXN";
		Escribir "¿Repetir? 1=Si 2=No";
		Leer r;
	FinSi
	Hasta Que r=2;
FinProceso
