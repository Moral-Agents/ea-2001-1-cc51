# ea-2001-1-cc51
# Objetivo
Realizar un análisis exploratorio de un conjunto de datos, creando visualizaciones, preparando los datos y obteniendo inferencias básicas utilizando R/RStudio como herramienta de software. Con el propósito de responder a las siguientes preguntas: 
* ¿Cuántas reservas se realizan por tipo de hotel? o ¿Qué tipo de hotel prefiere la
gente?
* ¿Está aumentando la demanda con el tiempo?
* ¿Cuándo se producen las temporadas de reservas: alta, media y baja?
* ¿Cuándo es menor la demanda de reservas?
* ¿Cuántas reservas incluyen niños y/o bebes?
* ¿Es importante contar con espacios de estacionamiento?
* ¿En qué meses del año se producen más cancelaciones de reservas?
# Integrantes
* Altamirano Higa, Marco - u201919054
* Moreno Vidal, Gabriel - u201913263
* Morales Linares, Stephano Heli - u201912659

# Breve Descripción del Dataset
El dataset trabajado es una adaptación del conjunto de datos original, que se puede encontrar en el artículo “Hotel booking demand datasets” en el siguiente enlace: https://www.sciencedirect.com/science/article/pii/S2352340918315191 .
Dicho artículo fue escrito por Nuno Antonio, Ana de Almeida y  Luis Nunes, asociados al Instituto Universitário de Lisboa, de Portugal, y publicado en ScienceDirect en el 2018. Los autores mencionan que crearon este dataset con el propósito de ayudar en la escasez de datos comerciales reales con fines científicos y educativos, con un énfasis en la investigación y la educación en la gestión de ingresos, el aprendizaje automático o la minería de datos.

# Conclusiones
* Existe un total de 119239 reservaciones, de los cuales 39913 son del tipo “Resort Hotel” y 79326 son del tipo “City Hotel”, este último es el preferido por los clientes, el cual representa un 66.53% aproximadamente de todos los registros.
* En el año 2016 la cantidad de reservas aumentó de 21941 a 56639 y en el año 2017 disminuyó de 56639 a 40659. Sin embargo, la cantidad de reservaciones se mantuvo superior al año 2015.
* En el nivel bajo se encuentra los primeros y últimos meses del año. El menor Enero con 5927 reservas, después Diciembre con 6768, Noviembre con 6786, y Febrero con 8059 reservas.
* En el nivel medio se encuentra la mayoría de meses del año. Marzo con 9782, Septiembre con 10486, Junio con 10933, Abril con 11074, y Octubre con 11141 reservas.
* En el nivel alto predominan los meses que se encuentran en la mitad del año. Mayo con 11778, Julio con 12645, y Agosto, el mayor de todos los meses, con 13860 reservas.
* De la temporada baja de reservas, que son los primeros y últimos meses del año. Enero es el mes con menores reservas en todo el año, con 5927. Casi el 5% de todas las reservas del año.
* En la mayoría de reservas los huéspedes no tienen niños ni bebés.
* De las reservas con “hijos”, así como las reservas sin “hijos” la mayoría prefiere el City Hotel. 
* No es importante el contar con espacios de estacionamiento, ya que solamente 7411 reservas lo requieren. Es decir, casi el 6% de todas las reservas.
* En 2 meses seguidos, Julio y Agosto, son los meses que más cancelaciones reciben los hoteles. Primero es Agosto con 5239 cancelaciones, y el segundo es Julio con 4742 cancelaciones.
* En el mes de Enero y en el mes de Noviembre, son los meses que menos cancelaciones se realizaron sobre las reservas de los hoteles.

# Licencia
Este repositorio usará la licencia https://opensource.org/licenses/MIT.
