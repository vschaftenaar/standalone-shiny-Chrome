server <- function(input, output, session) {
  session$onSessionEnded(function(){
    stopApp()
  })
  
  output$plt <- renderPlot({
    par(bg='#ffffff')
    hist(rnorm(input$id*1000),75,col='#5c7c7a',border=F,main='hist',xlab='',ylab='')
  })
  
}


