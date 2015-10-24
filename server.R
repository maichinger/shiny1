library(shiny)

lottery <- function(x, lottery) { 

  total<-45
  if (lottery=="49lottery") total<-49
  m<-6
  n<-total - m
  k<-6
  # hypergeometric distribution for lottery urn
  # number m of white balls, n=total - m number of black balls, k the number of draws from the urn, P(X=x)
  choose(m, x)*choose(n, k-x) / choose(m+n, k)
}
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$numrights})
    output$oid2 <- renderPrint({input$id2})
    output$prediction <- renderPrint({lottery(input$numrights,input$id2)})
  }
)
