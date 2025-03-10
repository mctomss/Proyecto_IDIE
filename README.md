# Proyecto_IDIE - Medidor de Variables Eléctricas con Control Remoto
by: 
- Juan Andres Rodriguez Ruiz
- Juan Andres Abella Ballen
- Tomás Felipe Montañez Piñeros

Este repositorio contiene el diseño y firmware de un **circuito medidor de variables eléctricas**, capaz de monitorear y controlar una carga conectada a la red doméstica. El dispositivo se comunica a través de **MQTT**, permitiendo visualizar las mediciones y controlar la carga desde un celular o computador.

## Descripción

El sistema está compuesto por:

1. **Firmware:** Código en Arduino para la adquisición y transmisión de datos mediante MQTT.
2. **Diseño Electrónico:** Archivos del circuito diseñados en **Eagle**.
3. **Footprints, Librerías y Datasheets:** Recursos adicionales para la correcta implementación del circuito.
4. **Archivos Gerber:** Listos para la fabricación de la PCB.

## Tecnologías Utilizadas

- **Código:** Arduino (C++)
- **Protocolo de comunicación:** MQTT
- **Diseño de PCB:** Eagle
- **Archivos de fabricación:** Gerber, .brd, .sch, .epf, .cam 

## Advertencia Importante

Para la compilación del firmware, **es obligatorio utilizar las librerías proporcionadas en este repositorio**.  
Se han realizado modificaciones en ciertas partes de las librerías para garantizar el correcto funcionamiento del sistema, especialmente en una sección de atención.  
El uso de versiones estándar de estas librerías puede causar fallos en la compilación.
