# 🅿️ Sistema de Cobro de Estacionamiento

Un programa desarrollado en **PSeInt** (pseudocódigo) que calcula el costo de estancia en un estacionamiento según el tiempo transcurrido entre la hora de entrada y la hora de salida.

## 👨‍🎓 Información del Desarrollador

- **Desarrollador:** Magallanes López Carlos Gabriel
- **Correo electrónico:** cgmagallanes23@gmail.com
- **Archivo:** `Proceso_Estacionamiento.psc`

---

## 🎯 Descripción del Proyecto

El programa solicita al usuario la hora de entrada y salida de un vehículo en formato 12 horas (AM/PM), calcula la duración total de la estancia y determina el monto a cobrar según una tabla de tarifas definida. Incluye validación de datos en cada entrada y permite procesar múltiples vehículos en una misma sesión.

---

## 💰 Tabla de Tarifas

| Tiempo de Estancia | Tarifa |
|--------------------|--------|
| 1 hora | $10 MXN |
| 2 horas | $20 MXN |
| 3 horas | $25 MXN |
| 4 horas | $30 MXN |
| 5 horas | $35 MXN |
| 6 horas | $40 MXN |
| 7 horas | $45 MXN |
| 8 horas o más | $120 MXN (tarifa máxima) |

**Regla de cobro:**
- Las primeras **2 horas** se cobran a **$10 MXN cada una**
- A partir de la **hora 3** en adelante, se cobran a **$5 MXN cada una**
- Si la estancia es de **8 horas o más**, se aplica una tarifa fija de **$120 MXN**
- Cualquier **fracción de hora** se cobra como hora completa

---

## 🔄 Flujo del Programa

```
INICIO
    ↓
Ingresar hora de entrada (1-12)
    ↓
Ingresar minutos de entrada (0-59)
    ↓
Seleccionar AM / PM de entrada
    ↓
Ingresar hora de salida (1-12)
    ↓
Ingresar minutos de salida (0-59)
    ↓
Seleccionar AM / PM de salida
    ↓
Validar que la salida sea después de la entrada
    ↓
Calcular duración en minutos
    ↓
Convertir a horas (fracción = hora extra)
    ↓
Aplicar tarifa correspondiente
    ↓
Mostrar horas totales y monto a pagar
    ↓
¿Repetir? → 1. Sí / 2. No
    ↓
FIN
```

---

## ✅ Validaciones

| Campo | Regla |
|-------|-------|
| Hora de entrada/salida | Debe estar entre 1 y 12 |
| Minutos de entrada/salida | Debe estar entre 0 y 59 |
| AM/PM | Solo se acepta 1 (AM) o 2 (PM) |
| Duración | La salida debe ser posterior a la entrada |

Cada campo se valida con un bucle `Mientras` que no permite continuar hasta que el dato ingresado sea correcto.

---

## 🧮 Lógica de Cálculo

### Conversión a formato 24 horas
```
Si es AM y la hora es 12  → se convierte a 0 (medianoche)
Si es PM y la hora no es 12 → se suma 12 a la hora
```

### Cálculo de duración
```
minutos de entrada = hrs1 * 60 + mns1
minutos de salida  = hrs2 * 60 + mns2
duración en minutos = minutos de salida - minutos de entrada
```

### Redondeo de horas
```
Si hay minutos sobrantes (fracción de hora) → se cobra una hora extra
```

### Aplicación de tarifa
```
Si horas >= 8       → total = $120 (tarifa máxima)
Si horas <= 2       → total = horas × $10
Si horas entre 3-7  → total = (2 × $10) + (horas restantes × $5)
```

---

## 📚 Conceptos de Programación Demostrados

- ✅ **Estructuras de repetición**: `Repetir...Hasta Que` y `Mientras...FinMientras`
- ✅ **Estructuras condicionales**: `Si...Sino...FinSi` simples y anidadas
- ✅ **Validación de entrada**: Bucles de control para datos incorrectos
- ✅ **Conversión de formato horario**: De 12 horas a 24 horas (AM/PM)
- ✅ **Operaciones matemáticas**: División entera, módulo y redondeo con `Trunc()`
- ✅ **Variables acumuladoras**: Cálculo progresivo del total a pagar
- ✅ **Lógica de negocio**: Aplicación de tarifas escalonadas

---

## ▶️ Cómo Ejecutar

1. Descarga e instala **[PSeInt](http://pseint.sourceforge.net/)**
2. Abre el archivo `Proceso_Estacionamiento.psc`
3. Presiona **F9** o el botón **Ejecutar**
4. Ingresa los datos solicitados en la consola

---

## 📋 Ejemplo de Ejecución

```
Hora de entrada (1-12): 9
Minuto de entrada (0-59): 30
AM/PM de entrada: 1  (AM)

Hora de salida (1-12): 2
Minuto de salida (0-59): 15
AM/PM de salida: 2  (PM)

Las horas en el estacionamiento fueron de 4
El total a pagar es $30 MXN

¿Repetir? 1=Si 2=No
```

---

## 📄 Licencia

Este proyecto es de carácter educativo y está disponible para uso personal y académico.

---

## 📧 Contacto

- **Autor:** Carlos Gabriel Magallanes López
- **Correo electrónico:** cgmagallanes23@gmail.com

---

⭐ **Simulador de cobro de estacionamiento en PSeInt que demuestra validación de datos, conversión horaria y lógica de tarifas escalonadas**
