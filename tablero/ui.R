
library(shiny)

# Define UI for application that draws a histogram
shinyUI(navbarPage("La Economía Popular",
  
  tabPanel("PRESENTACION", 
#primera pagina
           HTML("<h1><strong>Presentaci&oacute;n</strong></h1>
  <h3 style='text-align: justify;'><span style='font-weight: 400;'>&ldquo;La econom&iacute;a popular en el nuevo mercado de trabajo&rdquo; es una iniciativa desarrollada en conjunto por el <a href='https://sites.google.com/view/tallerdedatospopulares/inicio?authuser=0'>Taller de Datos Populares (TDDP)</a> y el <a href='https://www.ocepp.com/quienes-somos'>Observatorio de Coyuntura Econ&oacute;mica y Pol&iacute;ticas P&uacute;blicas (OCEPP)</a>.&nbsp;</span>&nbsp;</h3>
    <p style='text-align: justify;'>&nbsp;</p>
      <ul style='text-align: justify;'>
        <li style='font-weight: 400;'>
          <h4><strong>La Econom&iacute;a Popular es un fen&oacute;meno estructural que responde a la exclusi&oacute;n del trabajo con derechos de una parte relevante de la poblaci&oacute;n en edad de trabajar. </strong><span style='font-weight: 400;'>Este fen&oacute;meno en nuestro pa&iacute;s tiene un origen hist&oacute;rico que se remonta a la introducci&oacute;n del modelo de valorizaci&oacute;n financiera a mediados de la d&eacute;cada del setenta y sufri&oacute; una fuerte expansi&oacute;n durante la desindustrializaci&oacute;n y las pol&iacute;ticas de desregulaci&oacute;n y flexibilizaci&oacute;n laboral de los noventa, con su correlato de enorme crisis del mercado laboral. Durante la recuperaci&oacute;n econ&oacute;mica de la primera d&eacute;cada del siglo XXI la EP se redujo, pero actualmente sigue representando una porci&oacute;n relevante de la PEA, por lo que consideramos que es necesario concebir e incorporar a este sector como parte constitutiva del mercado de trabajo actual en Argentina.&nbsp;</span>&nbsp;</h4>
            </li>
            </ul>
            <ul style='text-align: justify;'>
              <li style='font-weight: 400;'>
                <h4><span style='font-weight: 400;'>Sin embargo, en contraste con su importancia en t&eacute;rminos econ&oacute;micos y sociales, persiste un </span><strong>problema de invisibilizaci&oacute;n de este sector de la econom&iacute;a,</strong><span style='font-weight: 400;'> aun cuando en los &uacute;ltimos a&ntilde;os haya cobrado cierto protagonismo en t&eacute;rminos reivindicativos y medi&aacute;ticos a partir de las demandas llevadas adelante por la organizaci&oacute;n sindical de la Uni&oacute;n de Trabajadores y Trabajadoras de la Econom&iacute;a Popular (UTEP) y diversas organizaciones.</span></h4>
                  </li>
                  </ul>
                  <ul style='text-align: justify;'>
                    <li style='font-weight: 400;'>
                      <h4><span style='font-weight: 400;'>La </span><strong>enorme magnitud y relativa estabilidad de este segmento ocupacional</strong><span style='font-weight: 400;'> debe alertar acerca de la necesidad de implementar pol&iacute;ticas p&uacute;blicas espec&iacute;ficamente dise&ntilde;adas para afrontar los desaf&iacute;os del sector.</span></h4>
                        </li>
                        </ul>
                        <h4 style='text-align: justify;'><br /><strong>El presente Tablero tiene el objetivo de poner a disposici&oacute;n</strong><span style='font-weight: 400;'> de investigadorxs de diferentes disciplinas, profesionales t&eacute;cnicos y hacedores de pol&iacute;ticas p&uacute;blicas (y de todxs aquellos interesadxs en la tem&aacute;tica) </span><strong>datos actualizados, estimaciones y proyecciones</strong><span style='font-weight: 400;'> que puedan ser de utilidad para analizar el universo de la EP, sus caracter&iacute;sticas, las especificidades de este sector y la situaci&oacute;n de su inserci&oacute;n en el mercado de trabajo argentino actual. &nbsp;</span></h4>
                          <p>&nbsp;</p>"
           ),
#Recuadro 1: ¿Qué es la Economía Popular?

mainPanel(HTML("<h1 style='text-align: justify;'><strong>&iquest;Qu&eacute; es la Econom&iacute;a Popular?</strong></h1>
  <h4 style='text-align: justify;'><span style='font-weight: 400;'>Dos aspectos centrales definen si una actividad se desarrolla en el marco de la EP: </span><span style='font-weight: 400;'><br /></span></h4>
    <ol style='text-align: justify;'>
      <li>tab
      <h4><span style='font-weight: 400;'>Inexistencia de relaci&oacute;n laboral asalariada.&nbsp;</span></h4>
        </li>
        <li>
        <h4><span style='font-weight: 400;'> Actividad trabajo-intensiva con bajo nivel de productividad.&nbsp;</span></h4>
          </li>
          </ol>
          <h4 style='text-align: justify;'><span style='font-weight: 400;'>Otras caracter&iacute;sticas distintivas de la EP son: la obsolescencia o baja complejidad de las m&aacute;quinas y herramientas; la autogesti&oacute;n (individual o colectiva), por lo general sin derechos laborales b&aacute;sicos; y el hecho de consistir en estrategias defensivas de supervivencia, frente a la imposibilidad de acceder al empleo asalariado.</span></h4>
            <h4 style='text-align: justify;'><span style='font-weight: 400;'>Adem&aacute;s de los criterios &ldquo;objetivos&rdquo; que delimitan el sector, pueden destacarse caracter&iacute;sticas socioculturales que afectan transversalmente en mayor o menor grado a las personas que realizan actividades en el marco de la EP (aunque no refieran a aspectos espec&iacute;ficos de la misma). En forma muy sint&eacute;tica puede mencionarse la falta de reconocimiento institucional (informalidad de las actividades y de los espacios de trabajo), la inseguridad habitacional, la existencia de importantes grupos de poblaci&oacute;n migrante, entre otras. As&iacute;, la EP abarca un conjunto enormemente heterog&eacute;neo de actividades, con caracter&iacute;sticas muy dis&iacute;miles entre s&iacute;: la recolecci&oacute;n de residuos urbanos, la agricultura familiar, la comercializaci&oacute;n informal en la v&iacute;a p&uacute;blica y medios de transporte, la producci&oacute;n textil, y muchas otras ramas de actividad.</span></h4>
              <h4 style='text-align: justify;'><span style='font-weight: 400;'>Fuente: OCEPP (2021) La Econom&iacute;a Popular. Total de trabajadorxs, ingresos y transiciones laborales. </span></h4>
                <h4 style='text-align: justify;'><span style='font-weight: 400;'>Disponible en:&nbsp;</span><a href='https://www.ocepp.com/post/la-econom%C3%ADa-popular-total-de-trabajadorxs-ingresos-y-transiciones-laborales'><span style='font-weight: 400;'>https://www.ocepp.com/post/la-econom%C3%ADa-popular-total-de-trabajadorxs-ingresos-y-transiciones-laborales</span></a><br style='font-weight: 400;' /><br style='font-weight: 400;' /><br /></h4>"),width = 6),

#Recuadro 2: ¿Quiénes somos?
mainPanel(HTML("<h2 style='font-weight: 400;'><strong>&iquest;Qui&eacute;nes somos?</strong></h2>
  <p style='font-weight: 400;'><img class='CENy8b' src='https://lh4.googleusercontent.com/gAWAyACUAPDOnBFh9954jFossnXPqfqMZVwRQKKvFDuXPSR_Ydi0fXHNC1gtkY_qREGY7HeIZb8s64KzSYMZejnJRUjj4yClOeZe702KaX-iO9PgWPdkFyEOB7rHr-f1Xg=w1280' alt='' width='162' height='55' /></p>
    <p style='font-weight: 400;'><a href='https://sites.google.com/view/tallerdedatospopulares/inicio?authuser=0&amp;pli=1'>TDDP</a>&nbsp;agrupa a graduades, docentes, investigadores y estudiantes de la Facultad de Ciencias Exactas y Naturales de la Universidad de Buenos Aires (FCEN-UBA) en&nbsp;un espacio de vinculaci&oacute;n para trabajar junto a cooperativas, movimientos sociales,&nbsp; agrupaciones ambientales, etc, generando herramientas y respuestas para aportar a problem&aacute;ticas sociales desde la Ciencia de Datos, la programaci&oacute;n y la tecnolog&iacute;a. El&nbsp;&ldquo;Tablero del nuevo mercado laboral argentino&rdquo;&nbsp;es uno de los proyectos que hemos desarrollado en vinculaci&oacute;n con el OCEPP y organizaciones sociales de la Econom&iacute;a Popular.&nbsp;</p>
      <p style='font-weight: 400;'><img src='https://static.wixstatic.com/media/54048a_ed2d21d85fe94a469cefc0b7cab738dc~mv2.png/v1/crop/x_1,y_17,w_799,h_208/fill/w_430,h_114,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/logo2.png' srcset='https://static.wixstatic.com/media/54048a_ed2d21d85fe94a469cefc0b7cab738dc~mv2.png/v1/crop/x_1,y_17,w_799,h_208/fill/w_430,h_114,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/logo2.png' alt='logo2.png' width='177' height='47' /></p>
        <p style='font-weight: 400;'>El&nbsp;<a href='https://www.ocepp.com/'>OCEPP</a>&nbsp;es un espacio de economistas y profesionales de otras disciplinas que nos desempe&ntilde;amos tanto del &aacute;mbito acad&eacute;mico como t&eacute;cnico. Desde el OCEPP integramos la Fundaci&oacute;n Igualdad realizamos informes peri&oacute;dicos, capacitaciones, desarrollo de indicadores e informes sobre temas de Econom&iacute;a Popular, Desarrollo Econ&oacute;mico y Macroeconom&iacute;a. En particular, el desarrollo de una&nbsp;<a href='https://www.ocepp.com/post/la-econom%C3%ADa-popular-total-de-trabajadorxs-ingresos-y-transiciones-laborales'>estimaci&oacute;n propia sobre el universo de la Econom&iacute;a Popular</a>, diversos&nbsp;<a href='https://www.ocepp.com/economia-popular'>documentos</a>&nbsp;que buscan conceptualizar este fen&oacute;meno, y el informe trimestral&nbsp;<a href='https://www.ocepp.com/post/monitor-de-la-economia-popular-agosto-2022'>&ldquo;Monitor de la Econom&iacute;a Popular&rdquo;</a>&nbsp;forman parte de los antecedentes e insumos en los que se basa el&nbsp;&ldquo;Tablero del nuevo mercado laboral argentino&rdquo;.&nbsp;</p>
          <p style='font-weight: 400;'><img class='header_logo header-logo' src='https://ulpe.org.ar/wp-content/uploads/2021/12/logo_head.jpg' alt='Universidad Latinoamericana de las Periferias &ndash; FUNDACI&Oacute;N &ndash;' width='173' height='57' /><br />El objetivo de la&nbsp;<a href='https://ulpe.org.ar/'>ULPE</a>&nbsp;es la creaci&oacute;n de instancias educativas de&nbsp; nivel superior que retomen la constituci&oacute;n de modos alternativos de producci&oacute;n y pr&aacute;ctica de conocimiento de los sectores populares. Busca promover una oferta educativa que en su ejercicio profesional permita mejorar la calidad de vida de las personas que habitan estos sectores, mediante experiencias, t&eacute;cnicas y herramientas pedag&oacute;gicas que surjan y se nutran de las realidades comunitarias del campo popular.</p>
            <h4 style='font-weight: 400;'><span style='font-weight: 400;'>&iquest;Te interesa sumarte o sumar a tu organizaci&oacute;n/instituci&oacute;n/centro de estudio como colaborador? Escribinos!&nbsp;</span></h4>
              <p style='font-weight: 400;'><span style='font-weight: 400;'><a href='mailto:observatoriocoyunturaeconomica@gmail.com'>observatoriocoyunturaeconomica@gmail.com</a>&nbsp;</span></p>
                <p style='font-weight: 400;'><span style='font-weight: 400;'><a href='mailto:info@ulpe.org.ar'>info@ulpe.org.ar</a>&nbsp;</span></p>
                  <p style='font-weight: 400;'><span style='font-weight: 400;'><a href='mailto:tallerdedatospopulares@gmail.com'>tallerdedatospopulares@gmail.com</a>&nbsp;</span></p>"),width = 6),

  ),

  tabPanel("La Economía Popular en el tiempo",
           
           # Sidebar with a slider input for number of bins
           sidebarLayout(
             sidebarPanel(
               
               checkboxInput("separar_genero",
                             "¿Separar por género?",
                             value=FALSE),
               
               checkboxInput("separar_zonas",
                             "¿Separar por zonas?",
                             value=FALSE),
               checkboxInput("usar_porcentaje_pea",
                             "¿Graficar como porcentaje de la PEA?",
                             value=TRUE),
               
               checkboxGroupInput("ocupaciones", 
                                  "¿Separar por ocupación?",
                                  choiceNames = c("RESTO CUENTAPROPISTAS", 
                                                  "ASALARIADOS REGISTRADOS", 
                                                  "ASALARIADOS NO REGISTRADOS",
                                                  "PATRONES",
                                                  'DESOCUPADES'),
                                  choiceValues = c("RESTO_CUENTAPROPISTAS",
                                                   "ASALARIADOS_REGISTRADOS",
                                                   "ASALARIADOS_NOREGISTRADOS", 
                                                   "PATRONES",
                                                   "DESOCUPADES")
                                  ),
               
               sliderInput("slider_años", 
                           label = 'Rango de años',
                           min = 2003, 
                           max = 2022, 
                           value = c(2003, 2022),
                           step = 1,
                           sep = ''),
               
               selectInput(
                 inputId = "variable_zona",
                 label = "Zonas a considerar",
                 choices = c("REGION","AGLOMERADO"),
                 multiple = FALSE,
                 selected = "REGION"),
               
               uiOutput("zonas_posibles"),
               
               selectInput(
                 inputId = "variable_edad",
                 label = "Partición de la edad",
                 choices = c("QUINQUENIO","DECENIO"),
                 multiple = FALSE,
                 selected = "QUINQUENIO"),
               
               uiOutput("edades_posibles"),
               
               downloadButton("descarga_p1", "Descargar dataset")
               
             ),
             
             # Gráfico de cantidad de personas participando de la economía popular
             mainPanel(
               plotOutput("cantTrabEP_plot")
             )
           ),
           #Texto interpretatitivo 
           mainPanel(HTML("<h3 style='text-align: center;'><strong>Breve an&aacute;lisis de los datos por OCEPP</strong></h3>
  <p style='text-align: justify;'><span style='font-weight: 400;'>Si bien la EP como fen&oacute;meno social en Argentina se da a partir del sistema de acumulaci&oacute;n basado en la valorizaci&oacute;n financiera impuesto en la d&eacute;cada del setenta, y se expande durante el proceso desindustrializador de la convertibilidad, resulta interesante analizar el per&iacute;odo inmediatamente posterior, desde 2003 hasta 2020, porque el mismo abarca un ciclo econ&oacute;mico completo (crecimiento, estancamiento y recesi&oacute;n). Esto nos permite observar, en primer lugar, cu&aacute;l fue la din&aacute;mica del sector en un contexto en el que el mercado de trabajo argentino mostr&oacute; notables signos de recuperaci&oacute;n. Y a su vez, c&oacute;mo respondi&oacute; la EP a partir del estancamiento y posterior crisis del &uacute;ltimo lustro.&nbsp;</span></p>
    <p style='text-align: justify;'>De acuerdo a los datos de la EPH, al comienzo del per&iacute;odo en consideraci&oacute;n se puede observar una poblaci&oacute;n ocupada de casi 9 millones de personas, donde aproximadamente el 20% corresponde al universo de la EP. Durante los primeros a&ntilde;os, como consecuencia de la recuperaci&oacute;n econ&oacute;mica, el mercado laboral argentino mostr&oacute; fuertes signos de recuperaci&oacute;n. Entre el a&ntilde;o 2003 y 2011, la tasa de desocupaci&oacute;n se redujo en 10 puntos porcentuales (p.p.) -llegando a representar el 7% de la PEA- y se incrementaron las tasas de actividad y de empleo. Sin embargo, en este per&iacute;odo las transiciones laborales desde la EP hacia el sector formal fueron reducidas, lo cual se observa en la rigidez a la baja de la EP como porcentaje de la PEA y la poblaci&oacute;n ocupada. De acuerdo a las estimaciones realizadas, entre 2003 y 2011 la proporci&oacute;n de individuos de la EP como porcentaje de la poblaci&oacute;n ocupada s&oacute;lo se redujo en 2 pp., representando el 15,6% en el a&ntilde;o 2011, que a su vez es el valor m&aacute;s bajo de toda la serie.</p>
      <p style='text-align: justify;'>Si analizamos la evoluci&oacute;n de la cantidad de personas ocupadas en los diferentes segmentos ocupacionales (gr&aacute;fico 2), se aprecia que la EP se mantiene relativamente estable entre 2003 y 2011 (con una leve ca&iacute;da), mientras que se observa un importante crecimiento de la cantidad de asalariadxs registrados. Por otro lado, se verifica una tendencia decreciente en la cantidad de asalariadxs no registrados. Si bien esta apreciaci&oacute;n no implica desconocer la existencia de transiciones laborales virtuosas en cascada -desde la inactividad y desempleo hacia la EP y desde all&iacute; hacia el empleo asalariado formal-, &eacute;sta resulta d&eacute;bil y no suficiente para reducir el peso relativo de la EP en la estructura ocupacional de forma significativa.</p>
        <p style='text-align: justify;'>Durante los &uacute;ltimos a&ntilde;os del gobierno kirchnerista la econom&iacute;a argentina comenz&oacute; a experimentar un estancamiento debido a cuestiones estructurales y a un contexto internacional m&aacute;s desfavorable. Asimismo, con el triunfo de la Alianza Cambiemos en las elecciones de 2015, se dio inicio a un nuevo plan econ&oacute;mico que volv&iacute;a al esquema de valorizaci&oacute;n financiera de d&eacute;cadas anteriores. Como era de esperarse, este modelo redund&oacute; en una profunda recesi&oacute;n econ&oacute;mica, con ca&iacute;da del poder adquisitivo, regresividad distributiva y la apertura de un nuevo ciclo de deterioro del mercado laboral argentino.</p>
          <p style='text-align: justify;'><span style='font-weight: 400;'>En este nuevo contexto, el sector de la EP comenz&oacute; a registrar un incremento, no s&oacute;lo en t&eacute;rminos absolutos, sino tambi&eacute;n relativos con respecto al total de ocupados y la PEA. De hecho, tal como puede observarse en el gr&aacute;fico 2, a partir de 2016 se aceler&oacute; la tasa de crecimiento de trabajadoras y trabajadores de la EP. Este efecto pareciera indicar que ante los ciclos recesivos, la EP absorbe a parte de lxs trabajadorxs que pierden su puesto de trabajo, fundamentalmente del sector informal.&nbsp;</span></p>
            <p style='text-align: justify;'><span style='font-weight: 400;'>Al observar la evoluci&oacute;n del sector durante casi las &uacute;ltimas dos d&eacute;cadas se puede afirmar que se trata de un fen&oacute;meno estructural, que no necesariamente sigue las tendencias del resto del mercado laboral cuando &eacute;ste se recompone, pero s&iacute; supone una fuente de subsistencia para muchas personas que son excluidas del sector formal.</span></p>
              <p style='text-align: justify;'><br style='font-weight: 400;' /><br style='font-weight: 400;' /></p>"),width = 12)
  ),

  tabPanel("Pobreza e indigencia en la EP",
           
           
           # Sidebar with a slider input for number of bins
           sidebarLayout(
             sidebarPanel(
               selectInput(
                 inputId = "tasa_tipo",
                 label = "TASA",
                 choices = c("POBREZA","INDIGENCIA"),
                 multiple = FALSE,
                 selected = "POBREZA"),
               
               checkboxInput("separar_genero_t2",
                             "¿Separar por género?",
                             value=FALSE),
               
               sliderInput("slider_años_t2", 
                           label = 'Rango de años',
                           min = 2016, 
                           max = 2022, 
                           value = c(2016, 2022),
                           step = 1,
                           sep = ''),
               
               checkboxGroupInput("ocupaciones_t2", 
                                  "¿Separar por ocupación?",
                                  choiceNames = c("OCUPADES NO EP", 
                                                  "OCUPADES"),
                                  choiceValues = c("tasa_OCU_NEP",
                                                   "tasa_OCU")
               ),
               
               
               selectInput(
                 inputId = "variable_zona_t2",
                 label = "Zonas a considerar",
                 choices = c("REGION","AGLOMERADO"),
                 multiple = FALSE,
                 selected = "REGION"),
               
               uiOutput("zonas_posibles_t2"),
               
               selectInput(
                 inputId = "variable_edad_t2",
                 label = "Partición de la edad",
                 choices = c("QUINQUENIO","DECENIO"),
                 multiple = FALSE,
                 selected = "QUINQUENIO"),
               
               uiOutput("edades_posibles_t2"),
               
               downloadButton("descarga_p2", "Descargar dataset")
               
             ),
             
             
             # Gráfico de cantidad de personas participando de la economía popular
             mainPanel(
               plotOutput("pobrezaEP_plot"),
               plotOutput("barrasEP_plot"),
               textOutput("plata_para_salir")
             )
           ),
           mainPanel(HTML("<h3 style='text-align: center;'><strong>Recuadro Gr&aacute;fico 1: Breve an&aacute;lisis de los datos por OCEPP</strong></h3>
  <p style='text-align: justify;'><span style='font-weight: 400;'>En este apartado presentamos las tasas de pobreza e indigencia de lxs trabajadorxs de la EP y del resto de los ocupadxs (esto es, los que no forman parte de la Econom&iacute;a Popular) . Esta comparaci&oacute;n resulta adecuada dado que la EP es un conjunto que se define a partir de una condici&oacute;n de ocupaci&oacute;n efectiva.&nbsp;</span></p>
    <p style='text-align: justify;'><span style='font-weight: 400;'>La primera cuesti&oacute;n a remarcar es la mayor incidencia de la pobreza y la indigencia en las personas que forman parte de la EP, aun teniendo en cuenta que se trata de personas ocupadas, como ya mencionamos. Adem&aacute;s de esta diferencia en los niveles, las variaciones son mucho m&aacute;s elevadas para dicho sector, lo que da cuenta de la variabilidad en el nivel de ingreso que suele caracterizar a estos empleos. Si se focaliza en la tasa de pobreza de ambos sectores, vemos una clara vinculaci&oacute;n con el ciclo econ&oacute;mico nacional, pudiendo identificar un primer momento -desde el II-2016 hasta el III-2017- con reducciones de relevancia tanto para lxs ocupadxs de la EP como para los que est&aacute;n por fuera (-10pp y -5pp, respectivamente). Esta ca&iacute;da, sostenida durante varios trimestres, no volver&aacute; a verse en el resto de la serie. En rigor, desde all&iacute; hasta fines de 2020 los porcentajes para ambos grupos crecen marcadamente, con algunos pocos trimestre de reducci&oacute;n, lo que coloca al sector EP con un 44,7% en el IV-2020 y a lxs ocupadxs no EP en 28,9% -en este caso, valor m&aacute;ximo de la serie-. De esta manera, el primer grupo crece alrededor de 8,8pp respecto del comienzo de la serie mientras que el segundo lo hace en 9,6pp. Referido a quienes se encuentran en la EP, el pico m&aacute;s elevado de incidencia de la pobreza se da durante la pandemia, con una tasa del 52,2%. De igual forma, como fue se&ntilde;alado en el apartado anterior, este n&uacute;mero debe ser tomado con cautela, ya que importantes segmentos &ldquo;pasaron&rdquo; a la inactividad durante la vigencia del aislamiento, lo que sin duda impact&oacute; en sus ingresos totales pero, dada la delimitaci&oacute;n de la EP -personas efectivamente ocupadas-, no est&aacute;n consideradas en el gr&aacute;fico.</span></p>
      <p style='text-align: justify;'><span style='font-weight: 400;'>Si ponemos el foco en la indigencia, veremos que la trayectoria de lxs ocupadxs en la EP es m&aacute;s err&aacute;tica, con modificaciones de un trimestre al otro en pr&aacute;cticamente todos los per&iacute;odos desde II-2016 hasta II-2018, si bien en los &uacute;ltimos trimestres se consolida una tendencia a la baja que deja la tasa en 4,5%, la menor de toda la serie para este grupo y 1,5pp por debajo de la inicial. En ese pasaje del segundo trimestre al tercero del 2018 evidenciamos la suba m&aacute;s pronunciada, ya que en esos tres meses la tasa crece 3pp y si bien se reducir&aacute; los trimestres siguientes, nunca perforar&aacute; el piso de 6,4% alcanzado en III-2019. De all&iacute; en m&aacute;s, con oscilaciones, la tendencia es a la suba, finalizando el 2020 en 9,5%, 3,5pp por encima de los valores iniciales en 2016. Para lxs ocupadxs por fuera de la EP, adem&aacute;s de exhibir niveles marcadamente inferiores, la tendencia es algo menos err&aacute;tica: una primera etapa hasta IV-2017 de marcada baja (de 2,5% a 1,5%) y de all&iacute; en m&aacute;s sostenido crecimiento, con s&oacute;lo tres trimestres de reducci&oacute;n. De esta manera, para IV-2020 la tasa se ubica en 3,8%, 1,3pp por encima del nivel del II-2020.</span></p>
        <h3 style='text-align: center;'><br style='font-weight: 400;' /><br style='font-weight: 400;' /><br /></h3>"),width = 6),
           mainPanel(HTML("<h3 style='text-align: center;'><strong>Recuadro Gr&aacute;fico 2: Breve an&aacute;lisis de los datos por OCEPP</strong></h3>
  <p style='text-align: justify;'><span style='font-weight: 400;'>Un aspecto de suma relevancia para la caracterizaci&oacute;n del sector lo constituye la composici&oacute;n de los ingresos. A esta cuesti&oacute;n se suma el hecho de que, desde algunos sectores, existen prejuicios respecto de que la Econom&iacute;a Popular sobrevive a partir de las transferencias del Estado.</span></p>
    <p style='text-align: justify;'><span style='font-weight: 400;'>Teniendo en cuenta los datos de la EPH, entre los a&ntilde;os 2016 y 2022 se puede observar que los ingresos provenientes de la actividad laboral representan la mayor parte de lo percibido por lxs trabajadorxs de la EP. En el a&ntilde;o 2022 el 87% del total del ingreso individual de lxs trabajadorxs de la EP corresponde a fuentes laborales. En lo que refiere a los ingresos no laborales, el rubro mayoritario lo constituye &ldquo;jubilaciones y pensiones&rdquo; (7% del total del ingreso individual). S&oacute;lo el 3% del ingreso se explica por &ldquo;Ayuda Social&rdquo;.&nbsp;</span></p>
  <p style='text-align: justify;'><span style='font-weight: 400;'>En cuanto a las brechas existentes entre los varones y mujeres al interior de la EP, la primera cuesti&oacute;n evidente refiere a que los ingresos de los primeros son ampliamente superiores. En efecto, el ingreso laboral de las mujeres es s&oacute;lo un 63% del ingreso de los varones. En paralelo, los ingresos no laborales de las mujeres son 85% superiores a los de los varones, lo que resulta consistente con la titularidad femenina de diversos tipos de transferencias.</span></p>
    <h3 style='text-align: center;'><br /><br style='font-weight: 400;' /><br /></h3>"),width = 6)
           ),
tabPanel("Informes y Contacto",
         
         mainPanel("Para ver todolos los informes accede a https://www.ocepp.com/economia-popular"),
         shiny::a(h4("Informes OCCEP", class = "btn btn-default action-button" , 
                     style = "fontweight:600"), target = "_blank",
                  href = "https://www.ocepp.com/economia-popular"),
         mainPanel("Para contactarnos ecsribi un mail a observatoriocoyunturaeconomica@gmail.com, info@ulpe.org.ar, tallerdedatospopulares@gmail.com , o accedé al siguient link: https://forms.gle/HChBpeEXJ52YWpFG8"),
         shiny::a(h4("Formulario de contacto", class = "btn btn-default action-button" , 
                     style = "fontweight:600"), target = "_blank",
                  href = "https://forms.gle/HChBpeEXJ52YWpFG8"))
         
         )
)
