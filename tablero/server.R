# Función server.
# Objeto output contiene:
#' @param cantTrabEP_plot Plot de la cantidad de trabajadorxs participando de la economía popular.

# Objeto input contiene:
#' @param separar_genero Si es verdadero, se separan las líneas de los datos en base al sexo de las personas.
#' @param regiones Las regiones a considerar cuando graficamos. En caso de que sea NULL, consideramos todas las regiones.
#' @param separar_zonas Si es verdadero, consideramos una curva distinta para cada una de las regiones consideradas.


shinyServer(function(input, output) {
  #### Primer panel
  output$zonas_posibles <- renderUI({
    opciones <- individual_03.hoy %>% 
      select_at(input$variable_zona) %>%
      unique %>% unlist %>% as.character %>% setdiff('N/A')
    
    selectInput(
      inputId = "zonas",
      label = "Zonas consideradas",
      choices = opciones,
      multiple = TRUE,
      selected = c() )
  })
  
  
  output$edades_posibles <- renderUI({
    opciones <- individual_03.hoy %>% 
      select_at(paste('EDAD',input$variable_edad,sep='_')) %>%
      unique %>% unlist %>% as.character %>% discard(is.na)
    
    selectInput(
      inputId = "edades",
      label = "Edades consideradas",
      choices = opciones,
      multiple = TRUE,
      selected = c() )
  })
  
  dataset_p1 <- reactive({
    zonas <- unique(input$zonas)
    if( length(zonas) == 0 ) 
      zonas <- individual_03.hoy %>% 
        select_at(input$variable_zona) %>%
        unique %>% unlist 
    
    edades <- unique(input$edades)
    if( length(edades) == 0 ) 
      edades <- individual_03.hoy %>% 
      select_at(paste('EDAD',input$variable_edad,sep='_')) %>%
      unique %>% unlist 
    
    grouping_vars <- genera_grouping_vars_cantTrabEP_plot(input)
    
    
    individual_03.hoy %>% ungroup() %>%
      filter(
        YEAR > input$slider_años[1],
        YEAR < input$slider_años[2],
        across(input$variable_zona, ~.x %in% zonas),
        across(paste('EDAD',input$variable_edad,sep='_'), ~.x %in% edades)
      ) %>%
      filter(SEXO != 'N/A') %>%
      group_by_at(grouping_vars) %>%
      summarise(
        ECONOMIA_POPULAR = sum(ECONOMIA_POPULAR),
        RESTO_CUENTAPROPISTAS = sum(RESTO_CUENTAPROPISTAS),
        ASALARIADOS_REGISTRADOS = sum(ASALARIADOS_REGISTRADOS),
        ASALARIADOS_NOREGISTRADOS = sum(ASALARIADOS_NOREGISTRADOS),
        PATRONES = sum(PATRONES),
        DESOCUPADES = sum(DESOCUPADES),
        PEA = sum(ECONOMICAMENTE_ACTIVES)
      ) %>% 
      pivot_longer(cols = c(
        'ECONOMIA_POPULAR',
        'RESTO_CUENTAPROPISTAS',
        'ASALARIADOS_REGISTRADOS',
        'ASALARIADOS_NOREGISTRADOS',
        'PATRONES',
        'DESOCUPADES'),
        names_to = 'OCUPACIONES',
        values_to = 'PERSONAS') %>% 
      ungroup() %>%
      filter(OCUPACIONES %in% c('ECONOMIA_POPULAR',input$ocupaciones)) %>%
      mutate(PORC_PEA = PERSONAS/PEA*100) %>%
      mutate(FECHA = as.Date(paste(YEAR,3*TRIMESTER,1,sep='-')))
  })
  
  output$cantTrabEP_plot <- renderPlot({
    # La lógica es que construimos un vector grouping_vars y otro aes_plot que nos permita indicar qué variables usar para agrupar (a la hora de construir el dataset resumido, grouping vars) y qué graficar (aes_plot)
    ocupa_labels <- case_when(
      input$ocupaciones == 'RESTO_CUENTAPROPISTAS' ~ 'RESTO CP',
      input$ocupaciones == 'ASALARIADOS_REGISTRADOS' ~ 'Asal R',
      input$ocupaciones == 'ASALARIADOS_NOREGISTRADOS' ~ 'Asal NR',
      input$ocupaciones == 'PATRONES' ~ 'Pat',
      input$ocupaciones == 'DESOCUPADES' ~ 'DesOcup'
    )
    names(ocupa_labels) <- input$ocupaciones
    ocupa_labels <- c(ocupa_labels, 'ECONOMIA_POPULAR' = 'EP')
    
    aes_plot <- genera_aes_cantTrabEP_plot(input)
    
    
    dataset_p1() %>% 
      ggplot(aes_plot) +
      geom_point() +
      geom_line() +
      theme_light() +
      theme(axis.title = element_text(size=15),
            axis.text = element_text(size=12)) +
      scale_color_discrete(labels = function(x) ocupa_labels[x]) +
      scale_shape(name = 'GÉNERO') +
      scale_x_date(
        date_breaks = '1 year',
        date_minor_breaks = '3 months',
        labels = function(x) format(x,'%Y-%m')
      ) +
      scale_y_continuous(name = ifelse(input$usar_porcentaje_pea,'% PEA','Millones de personas')) +
      theme(axis.text.x = element_text(angle = 90))
    

      

    })
  
  output$descarga_p1 <- downloadHandler(
    filename = 'datos_pestaña1.csv',
    content = function(file) write.csv(dataset_p1(),file,row.names=FALSE)
  )
  
  
  ##### SEGUNDO PANEL
  
  output$zonas_posibles_t2 <- renderUI({
    opciones <- individual_03.hoy %>% 
      select_at(input$variable_zona_t2) %>%
      unique %>% unlist %>% as.character %>% setdiff('N/A')
    
    selectInput(
      inputId = "zonas_t2",
      label = "Zonas consideradas",
      choices = opciones,
      multiple = TRUE,
      selected = c() )
  })
  
  
  output$edades_posibles_t2 <- renderUI({
    opciones <- individual_03.hoy %>% 
      select_at(paste('EDAD',input$variable_edad_t2,sep='_')) %>%
      unique %>% unlist %>% as.character %>% discard(is.na)
    
    selectInput(
      inputId = "edades_t2",
      label = "Edades consideradas",
      choices = opciones,
      multiple = TRUE,
      selected = c() )
  })
  
  dataset_p2 <- reactive({
    zonas <- unique(input$zonas_t2)
    if( length(zonas) == 0 ) 
      zonas <- individual_03.hoy %>% 
        select_at(input$variable_zona_t2) %>%
        unique %>% unlist 
    
    edades <- unique(input$edades_t2)
    if( length(edades) == 0 ) 
      edades <- individual_03.hoy %>% 
      select_at(paste('EDAD',input$variable_edad_t2,sep='_')) %>%
      unique %>% unlist 
    
    if(input$tasa_tipo == 'POBREZA'){
      situaciones <- c('pobre','indigente')
    }else{
      situaciones <- c('indigente')
    }
    
    
    grouping_vars <- genera_grouping_vars_pobrezaEP_plot(input)
    
    individual_03.hoy %>%
      filter(
        YEAR > input$slider_años_t2[1],
        YEAR < input$slider_años_t2[2],
        across(input$variable_zona_t2, ~.x %in% zonas),
        across(paste('EDAD',input$variable_edad_t2,sep='_'), ~.x %in% edades)
      ) %>%
      group_by_at(grouping_vars) %>%
      summarise(
        tasa_EP = sum(ECONOMIA_POPULAR_PONDIH[situacion %in% situaciones],na.rm=TRUE)/sum(ECONOMIA_POPULAR,na.rm=TRUE),
        tasa_OCU_NEP = sum(OCUPADES_NO_EP[situacion %in% situaciones],na.rm=TRUE)/sum(OCUPADES_NO_EP,na.rm=TRUE),
        tasa_OCU = sum((ECONOMIA_POPULAR_PONDIH + OCUPADES_NO_EP)[situacion %in% situaciones],na.rm=TRUE)/sum((ECONOMIA_POPULAR_PONDIH + OCUPADES_NO_EP),na.rm=TRUE)
      ) %>%
      mutate(FECHA = as.Date(paste(YEAR,4*TRIMESTER,'1',sep='-'))) %>%
      pivot_longer(cols = c(tasa_EP,
                            tasa_OCU_NEP,
                            tasa_OCU),
                   names_to = 'tasa_tipo',
                   values_to = 'tasa') %>%
      drop_na() %>% 
      filter(is.element(tasa_tipo,c(input$ocupaciones_t2,'tasa_EP'))) %>%
      mutate(
        tasa_tipo = case_when(
          str_detect(tasa_tipo,'OCU_NEP') ~ 'OCUPADES NO EP',
          str_detect(tasa_tipo,'EP') ~ 'EP',
          TRUE ~ 'POB. TOT.')
      )
  })
  
  
  output$pobrezaEP_plot <- renderPlot({
    # La lógica es que construimos un vector grouping_vars y otro aes_plot que nos permita indicar qué variables usar para agrupar (a la hora de construir el dataset resumido, grouping vars) y qué graficar (aes_plot)
    aes_plot <- genera_aes_pobrezaEP_plot(input)
    
    dataset_p2() %>%
      ggplot(aes_plot) +
      geom_point() +
      geom_line()+
      scale_color_brewer(name = 'OCUPACION',palette="Set2")+
      ylab('TASAS') +
      theme_light() +
      theme(axis.title = element_text(size=15),
            axis.text = element_text(size=12)) +
      theme(axis.text.x = element_text(angle = 90)) +
      scale_shape(name = 'GÉNERO') +
      scale_x_date(
        date_breaks = '1 year',
        date_minor_breaks = '3 months',
        labels = function(x) format(x,'%Y-%m')
      ) +
      labs(title = paste0("Tasas de ",input$tasa_tipo, " separando por ",input$variable_zona_t2),caption  = "Citar estos datos como: OCEPP y TDDP (2022). Tablero del nuevo mercado laboral argentino.")
      
  })

  output$barrasEP_plot <- renderPlot({
    zonas <- unique(input$zonas_t2)
    if( length(zonas) == 0 ) 
      zonas <- individual_03.hoy %>% 
        select_at(input$variable_zona_t2) %>%
        unique %>% unlist 
    
    edades <- unique(input$edades_t2)
    if( length(edades) == 0 ) 
      edades <- individual_03.hoy %>% 
      select_at(paste('EDAD',input$variable_edad_t2,sep='_')) %>%
      unique %>% unlist
    
    aes_plot <- genera_aes_barrasEP_plot(input)
    grouping_vars <- genera_grouping_vars_barrasEP_plot(input)
    
    
    individual_03.hoy %>%
      group_by(YEAR,TRIMESTER) %>%
      filter(max(CB_ECONOMIA_POPULAR) > 0) %>%
      ungroup() %>%
      filter(YEAR == max(YEAR)) %>%
      filter(TRIMESTER == max(TRIMESTER)) %>%
      filter(
        across(input$variable_zona_t2, ~.x %in% zonas),
        across(paste('EDAD',input$variable_edad_t2,sep='_'), ~.x %in% edades)
      ) %>%
      group_by_at(grouping_vars) %>%
      summarise(
        IT = sum(IT_ECONOMIA_POPULAR)/sum(ECONOMIA_POPULAR),
        LABORAL = sum(IL_ECONOMIA_POPULAR)/sum(ECONOMIA_POPULAR),
        NO_LABORAL = sum(INL_ECONOMIA_POPULAR)/sum(ECONOMIA_POPULAR)
      ) %>%
      mutate(LABORAL_porc = LABORAL/(LABORAL+NO_LABORAL)*100,
             NO_LABORAL_porc = NO_LABORAL/(LABORAL+NO_LABORAL)*100) %>%
      pivot_longer(cols = c('LABORAL_porc','NO_LABORAL_porc'),names_to = 'TIPO_INGRESO',values_to = 'INGRESO') %>%
      mutate(TIPO_INGRESO = str_remove(TIPO_INGRESO,'_porc')) %>%
      mutate(TIPO_INGRESO = str_replace(TIPO_INGRESO,'_',' ')) %>%
      ggplot(aes_plot) +
      geom_bar(stat='identity',position='dodge') +
      scale_x_discrete(name = 'INGRESO') +
      scale_y_continuous(name = '% del ingreso') +
      scale_fill_discrete(name = 'GENERO') +
      scale_fill_manual(values=c("#999999", "#E69F00"))+
     # scale_fill_brewer(palette="Set1")+
      theme_light()+
      labs(title = paste0("Porcentage del ingreso según origen"),caption  = "Citar estos datos como: OCEPP y TDDP (2022). Tablero del nuevo mercado laboral argentino. Recuperado de: https://arielolafsalgado.shinyapps.io/tablero_prototipo/")
    
  })
    
  output$plata_para_salir <- renderText({
    zonas <- unique(input$zonas_t2)
    if( length(zonas) == 0 ) 
      zonas <- individual_03.hoy %>% 
        select_at(input$variable_zona_t2) %>%
        unique %>% unlist 
    
    edades <- unique(input$edades_t2)
    if( length(edades) == 0 ) 
      edades <- individual_03.hoy %>% 
      select_at(paste('EDAD',input$variable_edad_t2,sep='_')) %>%
      unique %>% unlist 
    
    individual_03.hoy %>%
      group_by(YEAR,TRIMESTER) %>%
      filter(max(CB_ECONOMIA_POPULAR) > 0) %>%
      ungroup() %>%
      filter(YEAR == max(YEAR)) %>%
      filter(TRIMESTER == max(TRIMESTER)) %>%
      filter(
        across(input$variable_zona_t2, ~.x %in% zonas),
        across(paste('EDAD',input$variable_edad_t2,sep='_'), ~.x %in% edades)
      ) %>%
      summarise(
        IT_EP = sum(IT_ECONOMIA_POPULAR[situacion %in% c('pobre','indigente')],na.rm=TRUE),
        CB_EP = sum(CB_ECONOMIA_POPULAR[situacion %in% c('pobre','indigente')],na.rm=TRUE),
        EP_POB = sum(ECONOMIA_POPULAR[situacion %in% c('pobre','indigente')],na.rm=TRUE),
        TRIMESTER = unique(TRIMESTER),
        YEAR = unique(YEAR)
      ) %>%
      mutate(IFE_EP = CB_EP-IT_EP) %>%
      mutate(IFE_PROM = IFE_EP/EP_POB, IT_EP_PROM = IT_EP/EP_POB, CB_EP_PROM = CB_EP/EP_POB) -> resu_IFE
    paste('La persona promedio perteneciente a la EP en las regiones consideradas, y en los periodos etarios elegidos necesita (en el año ',resu_IFE$YEAR,' y el trimestre ',resu_IFE$TRIMESTER,') $',ceiling(resu_IFE$CB_EP_PROM),' para no ser pobre. El ingreso promedio de una persona perteneciente a la EP es $',ceiling(resu_IFE$IT_EP_PROM),', y por lo tanto le faltan $',ceiling(resu_IFE$IFE_PROM),' para salir de la pobreza.')  
  })
  
  output$descarga_p2 <- downloadHandler(
    filename = 'datos_pestaña2.csv',
    content = function(file) write.csv(dataset_p2(),file,row.names=FALSE)
  )
  
})
