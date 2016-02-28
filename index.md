---
title       : MaternityLeaveResults
subtitle    : 
author      : Irina Goloshchapova
job         : Expert CMASF
framework   : deckjs      # {io2012, html5slides, shower, dzslides, ...}
deckjs      : {theme: swiss, transition: vertical-slide}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
widgets     : []            # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: libraries/nvd3}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
<!-- Limit image width and height -->
<style type='text/css'>
img {
    max-height: 560px;
    max-width: 1000px;
}
</style>

<!-- Center image on slide -->
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.min.js"></script>
<script type='text/javascript'>
$(function() {
    $("p:has(img)").addClass('centered');
});
</script>

# Maternity Leave Results  

**Irina Goloshchapova**  
*Expert CMASF*

--- 
## Основные темы

### 1. Визуализация

### 2. Автоматизация

### 3. Машинное обучение

---
## Visualization

1. **Any kind of static graphs**  
   - from simple ggplot2 to complex spatial models and panel graphics  

2. **Animated graphics**  

3. **Interactive graphics and presentations**  
   - *graphics*: from simple time series to complex interaction with user  
   - html-based *analytical reports* with graphs and tables
   - *presentations*  

---

## Static graphs: simple

![plot of chunk simple_graphs_1](assets/fig/simple_graphs_1-1.png)

---

## Static graphs: medium

![plot of chunk medium_graphs_1](assets/fig/medium_graphs_1-1.png)

---
## Static graphs: medium

![plot of chunk medium_graphs_2](assets/fig/medium_graphs_2-1.png)

---

## Static graphs: interesting
#### Correlogram

![plot of chunk unteresting_graphs_1](assets/fig/unteresting_graphs_1-1.png)

---

## Static graphs: interesting
#### Mosaic plot

![plot of chunk interesting_graphs_2](assets/fig/interesting_graphs_2-1.png)

---

## Static graphs: interesting
#### Diagnostic plots

![plot of chunk interesting_graphs_3](assets/fig/interesting_graphs_3-1.png)

---
## Static graphs: interesting
#### Panel maps

![image_london](figures/facet_london.png)

---
## Static graphs: interesting
#### Chord Diagram

![chord](figures/chordiag.png)

---
## Animated graphics  

<iframe src = 'http://revolution-computing.typepad.com/.a/6a010534b1db25970b01b8d1a4d670970c-pi' width = '600px' height = '600px'> </iframe>

---
## Interactive graphics and presentations


<div id = 'chart1' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1()
    });
    function drawchart1(){  
      var opts = {
 "dom": "chart1",
"width":    700,
"height":    350,
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
},
{
 "Hair": "Black",
"Eye": "Brown",
"Sex": "Female",
"Freq":             36 
},
{
 "Hair": "Brown",
"Eye": "Brown",
"Sex": "Female",
"Freq":             66 
},
{
 "Hair": "Red",
"Eye": "Brown",
"Sex": "Female",
"Freq":             16 
},
{
 "Hair": "Blond",
"Eye": "Brown",
"Sex": "Female",
"Freq":              4 
},
{
 "Hair": "Black",
"Eye": "Blue",
"Sex": "Female",
"Freq":              9 
},
{
 "Hair": "Brown",
"Eye": "Blue",
"Sex": "Female",
"Freq":             34 
},
{
 "Hair": "Red",
"Eye": "Blue",
"Sex": "Female",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Blue",
"Sex": "Female",
"Freq":             64 
},
{
 "Hair": "Black",
"Eye": "Hazel",
"Sex": "Female",
"Freq":              5 
},
{
 "Hair": "Brown",
"Eye": "Hazel",
"Sex": "Female",
"Freq":             29 
},
{
 "Hair": "Red",
"Eye": "Hazel",
"Sex": "Female",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Hazel",
"Sex": "Female",
"Freq":              5 
},
{
 "Hair": "Black",
"Eye": "Green",
"Sex": "Female",
"Freq":              2 
},
{
 "Hair": "Brown",
"Eye": "Green",
"Sex": "Female",
"Freq":             14 
},
{
 "Hair": "Red",
"Eye": "Green",
"Sex": "Female",
"Freq":              7 
},
{
 "Hair": "Blond",
"Eye": "Green",
"Sex": "Female",
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

---
