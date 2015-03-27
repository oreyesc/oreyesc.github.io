---
title       : "Slidify Project"
subtitle    : "Slidify & Shiny"
author      : "Oscar Reyes"
job         : "DS"
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight  # {highlight.js, prettify, highlight, highlight.js}
hitheme     : solarized_light      #
widgets     : [shiny] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft, selfcontained}
output: ioslides_presentation
copy_libraries: true
runtime: shiny
logo        : OR.jpg
---


## Server

**_Variables & Description_**

**colm**   : contains the value of selected dataset.                   
**var**    : contains the names of the columns of the selected dataset.   
**dataset**: contains the selected dataset.                             
**graph**  : contains the selected graphic.                            

[Readme File](https://github.com/oreyesc/oreyesc.github.io/blob/master/README.md)

--- 

## Functionality ui.R

In the ui.R the user has tow parts:

**1. Side Bar: has the option to choose:**

  - **Select a dataset**: iris, mtcars or trees.
  
  - **Select density**: from 50 to 250.
  
  - **Select a colour** for the graphs.
  
  - **Select one type of graph**: Bar Plot, Box Plot, Dot Plot, Line Chart, Scatter Plot.
  
**2. mainPanel: has a tabPanel with:**
  - **Dinamyc Information**: shows information (summary or structure) of the selected dataset.

---

## Embedded Code

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 
[Shiny Application](https://sigma360.shinyapps.io/shinyproject_coursera/)

--- 

## Interactive Information 
<div class="row-fluid">
  <div class="col-sm-4">
    <form class="well">
      <div class="form-group shiny-input-container">
        <label class="control-label" for="dataset">Choose Dataset</label>
        <div>
          <select id="dataset"><option value="iris" selected>iris</option>
<option value="mtcars">mtcars</option>
<option value="trees">trees</option></select>
          <script type="application/json" data-for="dataset" data-nonempty="">{}</script>
        </div>
      </div>
      <div class="form-group shiny-input-container">
        <label class="control-label" for="type">Choose Type</label>
        <div>
          <select id="type"><option value="Summary" selected>Summary</option>
<option value="Structure">Structure</option></select>
          <script type="application/json" data-for="type" data-nonempty="">{}</script>
        </div>
      </div>
    </form>
  </div>
  <div class="col-sm-8">
    <pre id="sumstr" class="shiny-text-output"></pre>
  </div>
</div>
