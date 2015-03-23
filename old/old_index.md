---
title       : Slidify Presentation
subtitle    : Project using Slidify
author      : Oscar Reyes
job         : DS
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap, slidify}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : /OR.jpg
ext_widgets : {rCharts: [libraries/nvd3]}
---

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


--- .class #id 


```
## Loading required package: devtools
```

```
## Warning: Username parameter is deprecated. Please use ramnathv/slidify
```

```
## Warning: Username parameter is deprecated. Please use
## ramnathv/slidifyLibraries
```

```
## Downloading github repo ramnathv/slidify@dev
## Installing slidify
## '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla CMD INSTALL  \
##   '/private/var/folders/pd/q5qm6hcx3tl3vhk9qx1vz6lw0000gn/T/Rtmp3pol39/devtools845e3476e0da/ramnathv-slidify-1e11ccf'  \
##   --library='/Library/Frameworks/R.framework/Versions/3.1/Resources/library'  \
##   --install-tests 
## 
## Downloading github repo ramnathv/slidifyLibraries@dev
## Installing slidifyLibraries
## '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla CMD INSTALL  \
##   '/private/var/folders/pd/q5qm6hcx3tl3vhk9qx1vz6lw0000gn/T/Rtmp3pol39/devtools845e6ffdbc3d/ramnathv-slidifyLibraries-b6bad77'  \
##   --library='/Library/Frameworks/R.framework/Versions/3.1/Resources/library'  \
##   --install-tests
```

```
## Warning: Username parameter is deprecated. Please use ramnathv/rCharts
```

```
## Downloading github repo ramnathv/rCharts@master
## Installing rCharts
## '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla CMD INSTALL  \
##   '/private/var/folders/pd/q5qm6hcx3tl3vhk9qx1vz6lw0000gn/T/Rtmp3pol39/devtools845e243d2ebd/ramnathv-rCharts-389e214'  \
##   --library='/Library/Frameworks/R.framework/Versions/3.1/Resources/library'  \
##   --install-tests
```

```
## Warning: Username parameter is deprecated. Please use rstudio/shiny
```

```
## Downloading github repo rstudio/shiny@master
## Installing shiny
## Installing dependencies for shiny:
## jsonlite
```

```
## Error in contrib.url(repos, "source"): trying to use CRAN without setting a mirror
```

```
## Loading required package: rCharts
```


<div id = 'chart1' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1()
    });
    function drawchart1(){  
      var opts = {
 "dom": "chart1",
"width":    800,
"height":    400,
"x": "Hair",
"y": "Freq",
"group": "Eye",
"type": "multiBarChart",
"id": "chart1" 
},
        data = [
 {
 "Hair": "Black",
"Eye": "Brown",
"Sex": "Male",
"Freq":             32 
},
{
 "Hair": "Brown",
"Eye": "Brown",
"Sex": "Male",
"Freq":             53 
},
{
 "Hair": "Red",
"Eye": "Brown",
"Sex": "Male",
"Freq":             10 
},
{
 "Hair": "Blond",
"Eye": "Brown",
"Sex": "Male",
"Freq":              3 
},
{
 "Hair": "Black",
"Eye": "Blue",
"Sex": "Male",
"Freq":             11 
},
{
 "Hair": "Brown",
"Eye": "Blue",
"Sex": "Male",
"Freq":             50 
},
{
 "Hair": "Red",
"Eye": "Blue",
"Sex": "Male",
"Freq":             10 
},
{
 "Hair": "Blond",
"Eye": "Blue",
"Sex": "Male",
"Freq":             30 
},
{
 "Hair": "Black",
"Eye": "Hazel",
"Sex": "Male",
"Freq":             10 
},
{
 "Hair": "Brown",
"Eye": "Hazel",
"Sex": "Male",
"Freq":             25 
},
{
 "Hair": "Red",
"Eye": "Hazel",
"Sex": "Male",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Hazel",
"Sex": "Male",
"Freq":              5 
},
{
 "Hair": "Black",
"Eye": "Green",
"Sex": "Male",
"Freq":              3 
},
{
 "Hair": "Brown",
"Eye": "Green",
"Sex": "Male",
"Freq":             15 
},
{
 "Hair": "Red",
"Eye": "Green",
"Sex": "Male",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Green",
"Sex": "Male",
"Freq":              8 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>



