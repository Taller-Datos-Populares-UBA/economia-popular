# Tablero para la Economía Popular

Este repositorio contiene el código para producir un tablero que muestre la evolución en el tiempo del sector denominado _Economía Popular_. El mismo representa un esfuerzo conjunto del Observatorio de Coyuntura Económica y Políticas Públicas [OCEPP](https://www.ocepp.com/), y el [Taller de Datos Populares](https://sites.google.com/view/tallerdedatospopulares).

El mismo se encuentra aún en sus primeras versiones, y nuevas ampliaciones ocurriran en el futuro.

----------------------------------------------------


El tablero consiste de una aplicación desarrollada en **shiny**. La aplicación en cuestión se basa en un agregado de los datos disponibles a través de la Encuesta Permanente de Hogares, obtenidos a través del paquete **eph**.

Dentro del repositorio, puede encontrarse:

- El script **prepara_ep.R** toma los datos de la EPH y genera la base de datos **base_ep.RData**.
- El script **prepara_ep_resumen.R** toma la base **base_ep.RData** y genera la base de datos **tablero/data/base_ep_resumen.RData**, donde se encuentra la versión agregada de los datos en cuestión.
- El archivo **variables_ep.csv** es un diccionario en formato csv, donde se indica el criterio de renombramiento de las variables de la EPH.
- El archivo **canastas.csv** contiene las canastas alimentarias y totales para cada region del país, para distintos años.
- Los archivos **ep_funciones.R** y **tablero/helpers.R** contienen funciones auxiliares para el procesamiento de datos dentro y fuera del tablero.
- El tablero en sí mismo (autocontenido) se encuentra dentro de la carpeta **tablero**, y sigue el formato de dos archivos de shiny: los archivos **ui.R** y **server.R** contienen la interfaz gráfica y el servidor, respectivamente. El archivo **global.R** se encarga de cargar la base de datos correspondiente dentro de la aplicación.
- Los archivos **amas_de_casa.html** y **amas_de_casa.Rmd** contienen análisis preliminares de la población de amas de casa, potencialmente a ser incluida a futuro en el tablero.
