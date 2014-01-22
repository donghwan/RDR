library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("Re-Discovery Rate (RDR)"),

  sidebarPanel(
  
  	sliderInput("c.t", "Critical value in training (c.t):", 
                min = 0, max = 5, value = 1, step= 0.01),
                
  	sliderInput("c.v", "Critical value in validation (c.v):", 
                min = 0, max = 5, value = 1, step= 0.01),
     
     sliderInput("nt0", "Sample size of control group in training study (nt0):", 
                min = 0, max = 1000, value = 100),           
 
  	sliderInput("nt1", "Sample size of case group in training study (nt1):", 
                min = 0, max = 1000, value = 100),
     sliderInput("nv0", "Sample size of control group in validation study (nv0):", 
                min = 0, max = 1000, value = 100),
     sliderInput("nv1", "Sample size of case group in validation study (nv1):", 
                min = 0, max = 1000, value = 100), 
     sliderInput("ng", "The number of tests (ng):", 
                min = 0, max = 10000, value = 1000),
     
     
     sliderInput("p0", "The Proportion of true null hypothesis:",
     min=0, max=1, value=0.9, step=0.01),
     
     
     textInput("p1", "The vector of the proportions of the ture alternative hypotheses:", "0.05,0.05"),
     textInput("D", "The vector of non-zero effect sizes:", "-1,1")
     
                              
  ),

  mainPanel(

  verbatimTextOutput(outputId = "rdr_text")
  
  
  )
))
