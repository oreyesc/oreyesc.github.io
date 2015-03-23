---
title       : Slidify Project
subtitle    : Slidify & Shiny
author      : Oscar Reyes
job         : DS
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [shiny, interactive]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : /OR.jpg
ext_widgets : {rCharts: [libraries/nvd3]}
runtime     : shiny
assets      : {js: 'test.js'}
---

<style>
body {
  background-color: #000;
}
.quiz-option label{
  display: inline;
  font-size: 1em;
}
ul.nav li::before { content: ""; }  
ul.nav li{ font-size: 18px; line-height: 24px;}
</style>


## Description

The application requirements:

1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. 

## Components

<table>
        <tr>
                <td><b>Component</b></td>
                <td><b>Description</b></td>
        </tr>
        <tr>
                <td>ui.R</td>
                <td>user-interface definition of a Shiny web application.</td>
        </tr>
        <tr>
                <td>server.R</td>
                <td>logic for a Shiny web application</td>
        </tr>
</table>


--- &twocol 

## Functionality ui.R
*** =left
In the ui.R the user has tow parts:

**1. Side Bar: has the option to choose:**

- **Select a dataset**: iris, mtcars or trees.
- **Select two variables**: X and Y variables.
- **Select density**: from 50 to 250.
- **Select a colour** for the graphs.
- **Select one type of graph**:
  - Bar Plot.
  - Box Plot.
  - Dot Plot.
  - Line Chart.
  - Scatter Plot.

*** =right
**2. mainPanel: has a tabPanel with:**
- **Dinamyc Plot**: shows the selected graphic created with the information of the selected dataset.
- **Structure**: shows the selected dataset structure.
- **Summary**: shows the selected dataset summary.
- **Data**: shows the dataof the X variable.

--- 

## Server and Libraries
In the server.R are:

<table>
        <tr>
                <td>**Variable**</td>
                <td>**Functionality**</td>
        </tr>
        <tr>
                <td>colm</td>
                <td>contains the value of selected dataset</td>
        </tr>
        <tr>
                <td>var</td>
                <td>contains the names of the columns of the selected dataset.</td>
        </tr>
        <tr>
                <td>dataset</td>
                <td>contains the selected dataset.</td>
        </tr>
        <tr>
                <td>graph</td>
                <td>contains the selected graphic.</td>
        </tr>
</table>

### Libraries:

`shiny` , `ggplot`, `car`, `RcppEigen`

--- .class #id 

## Embedded Code


```r
library(ggplot2)
qplot(hp, mpg, data=mtcars)+geom_smooth() 
```

![plot of chunk md-cars-scatter](assets/fig/md-cars-scatter-1.png) 
[Shiny Application](https://sigma360.shinyapps.io/shinyproject_coursera/)



--- &interactive

## Interactive Chart

```r
slidifyUI(
        slidebarPanel (
                selectInput ('sex', 'Chose Sex', c ('Male', 'Female')),
                selectInput ('type', 'Choose Type',
                             c ('multiBarChart', 'multiBarHorizantalChart')
                )
        ),
        mainPanel (
                
        )
) 
```

```
## Error in eval(expr, envir, enclos): could not find function "slidifyUI"
```




