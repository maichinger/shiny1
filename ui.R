library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("lottery prediction"),
  
    sidebarPanel(
      numericInput('numrights', 'get so many right draws within 1-6', 6, min = 0, max = 6, step = 1),
      radioButtons("id2", "lottery type:",
                   c("45lottery" = "45lottery",
                     "49lottery" = "49lottery")), 
      submitButton('Submit')
    ),
    mainPanel(
        h3('Results of lottery'),
        h4('You entered number of right draws'),
        verbatimTextOutput("inputValue"),
        h4('for lottery type'),
        verbatimTextOutput("oid2"),
        h4('Which resulted in a probability to win '),
        verbatimTextOutput("prediction")
    )
  )
)

