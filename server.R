library(shiny)
library(rdr)

shinyServer(function(input, output) {

output$rdr_text<- renderPrint({
	p1 <- as.numeric(strsplit(input$p1, ",")[[1]])
	D<-as.numeric(strsplit(input$D, ",")[[1]])
	
	rdrs<-rdr(c.t=input$c.t, c.v=input$c.v, nt0=input$nt0, 
    nt1=input$nt1, nv0 = input$nv0, nv1 = input$nv1, 
    D = D, p0 = input$p0, p1 = p1, 
    ng = 10000)	
	

rdrs
	
})  
    

})
