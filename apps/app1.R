require (rCharts)
require (car)
require (ggplot2)
require (RcppEigen)
require (shiny)
require (shinyapps)
require (slidify)
require (slidifyLibraries)

datainfo <- reactive ({
        switch (input$dataset,
                "iris" = as.data.frame(iris),
                "mtcars" = as.data.frame(mtcars),
                "trees" = as.data.frame(trees)
        )
})

strsum <- reactive ({
        switch (input$type,
                "Summary" = summary (datainfo()),
                "Structure" = str (datainfo())
        )
})

output$sumstr <- renderPrint ({
        strsum()
})
