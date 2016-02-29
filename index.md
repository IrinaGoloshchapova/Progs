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
## Main Themes

### 1. Visualization

### 2. Automatization

### 3. Machine Learning

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
#### Simple graphs

<iframe src=' assets/fig/rcharts_1-1.html ' scrolling='no' frameBorder='0' seamless class='rChart nvd3 ' id=iframe- chart13844e6d4316 ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>

---
## Interactive graphics and presentations  
#### Simple graphs

<iframe src = 'figures/compan.html' width = '850px' height = '450px'> </iframe>

---
## Interactive graphics and presentations  
#### Graphs with controls

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;link rel=&#039;stylesheet&#039; href=&quot;http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css&quot;&gt;
    &lt;link rel=&#039;stylesheet&#039; href=&#039;C:/Program Files/R/R-3.2.3/library/rCharts/libraries/nvd3/css/nv.d3.css&#039;&gt;
    &lt;link rel=&#039;stylesheet&#039; href=&#039;C:/Program Files/R/R-3.2.3/library/rCharts/libraries/nvd3/css/rNVD3.css&#039;&gt;
    
    &lt;script src=&#039;C:/Program Files/R/R-3.2.3/library/rCharts/libraries/nvd3/js/jquery-1.8.2.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;C:/Program Files/R/R-3.2.3/library/rCharts/libraries/nvd3/js/d3.v3.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;C:/Program Files/R/R-3.2.3/library/rCharts/libraries/nvd3/js/nv.d3.min-new.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;C:/Program Files/R/R-3.2.3/library/rCharts/libraries/nvd3/js/fisheye.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
     &lt;script src=&quot;http://ajax.googleapis.com/ajax/libs/angularjs/1.2.6/angular.min.js&quot;&gt;&lt;/script&gt;
     &lt;script src=&quot;http://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.min.js&quot;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block
      margin: auto auto;
      width: 100%;
      height: 400px;
    }
    .bs-docs-example:after {
      content: &quot;&quot;;
      background: transparent;
      border: none;
    }
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body ng-app&gt;
      
    &lt;div class=&#039;container&#039;&gt;
  &lt;div class=&#039;row&#039;&gt;
    &lt;div class=&#039;col-md-3&#039; id=&#039;my-gui-container&#039;&gt;
      
    &lt;/div&gt;
    &lt;div class=&#039;col-md-8&#039;&gt;
      &lt;div class=&quot;bs-docs-example&quot;&gt;
        &lt;div id=&#039;chartd7421633ba2&#039; class=&#039;rChart nvd3&#039;&gt;
          &lt;svg&gt;&lt;/svg&gt;
        &lt;/div&gt;&lt;br/&gt;
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
  
&lt;script type=&#039;text/javascript&#039;&gt;
 $(document).ready(function(){
  var opts = {
 &quot;dom&quot;: &quot;chartd7421633ba2&quot;,
&quot;width&quot;:    700,
&quot;height&quot;:    400,
&quot;x&quot;: &quot;Eye&quot;,
&quot;y&quot;: &quot;Freq&quot;,
&quot;group&quot;: &quot;Hair&quot;,
&quot;type&quot;: &quot;multiBarChart&quot;,
&quot;id&quot;: &quot;chartd7421633ba2&quot; 
},
    data = [
 {
 &quot;Hair&quot;: &quot;Black&quot;,
&quot;Eye&quot;: &quot;Brown&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             32 
},
{
 &quot;Hair&quot;: &quot;Brown&quot;,
&quot;Eye&quot;: &quot;Brown&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             53 
},
{
 &quot;Hair&quot;: &quot;Red&quot;,
&quot;Eye&quot;: &quot;Brown&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             10 
},
{
 &quot;Hair&quot;: &quot;Blond&quot;,
&quot;Eye&quot;: &quot;Brown&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              3 
},
{
 &quot;Hair&quot;: &quot;Black&quot;,
&quot;Eye&quot;: &quot;Blue&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             11 
},
{
 &quot;Hair&quot;: &quot;Brown&quot;,
&quot;Eye&quot;: &quot;Blue&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             50 
},
{
 &quot;Hair&quot;: &quot;Red&quot;,
&quot;Eye&quot;: &quot;Blue&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             10 
},
{
 &quot;Hair&quot;: &quot;Blond&quot;,
&quot;Eye&quot;: &quot;Blue&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             30 
},
{
 &quot;Hair&quot;: &quot;Black&quot;,
&quot;Eye&quot;: &quot;Hazel&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             10 
},
{
 &quot;Hair&quot;: &quot;Brown&quot;,
&quot;Eye&quot;: &quot;Hazel&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             25 
},
{
 &quot;Hair&quot;: &quot;Red&quot;,
&quot;Eye&quot;: &quot;Hazel&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              7 
},
{
 &quot;Hair&quot;: &quot;Blond&quot;,
&quot;Eye&quot;: &quot;Hazel&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              5 
},
{
 &quot;Hair&quot;: &quot;Black&quot;,
&quot;Eye&quot;: &quot;Green&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              3 
},
{
 &quot;Hair&quot;: &quot;Brown&quot;,
&quot;Eye&quot;: &quot;Green&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:             15 
},
{
 &quot;Hair&quot;: &quot;Red&quot;,
&quot;Eye&quot;: &quot;Green&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              7 
},
{
 &quot;Hair&quot;: &quot;Blond&quot;,
&quot;Eye&quot;: &quot;Green&quot;,
&quot;Sex&quot;: &quot;Male&quot;,
&quot;Freq&quot;:              8 
} 
]
 
  var myChart = drawChart(opts, data)
  var gui = new dat.GUI({ autoPlace: false }),
    controls_json = {
 &quot;x&quot;: {
 &quot;name&quot;: &quot;x&quot;,
&quot;value&quot;: &quot;Eye&quot;,
&quot;values&quot;: [ &quot;Eye&quot;, &quot;Hair&quot; ],
&quot;label&quot;: &quot;Select  x :&quot; 
},
&quot;group&quot;: {
 &quot;name&quot;: &quot;group&quot;,
&quot;value&quot;: &quot;Hair&quot;,
&quot;values&quot;: [ &quot;Eye&quot;, &quot;Hair&quot; ],
&quot;label&quot;: &quot;Select  group :&quot; 
},
&quot;type&quot;: {
 &quot;name&quot;: &quot;type&quot;,
&quot;value&quot;: &quot;multiBarChart&quot;,
&quot;values&quot;: [ &quot;multiBarChart&quot;, &quot;multiBarHorizontalChart&quot; ],
&quot;label&quot;: &quot;Select  type :&quot; 
} 
}

  var customContainer = document.getElementById(&#039;my-gui-container&#039;);
  customContainer.appendChild(gui.domElement);  
  
    var x = gui.add(opts, &#039;x&#039;, 
      controls_json[&#039;x&#039;].values)
    x.onChange(function(value){
      opts[&#039;x&#039;] = value;
      $(&#039;#chartd7421633ba2 svg&#039;).empty();
      drawChart(opts, data)
    })
    var group = gui.add(opts, &#039;group&#039;, 
      controls_json[&#039;group&#039;].values)
    group.onChange(function(value){
      opts[&#039;group&#039;] = value;
      $(&#039;#chartd7421633ba2 svg&#039;).empty();
      drawChart(opts, data)
    })
    var type = gui.add(opts, &#039;type&#039;, 
      controls_json[&#039;type&#039;].values)
    type.onChange(function(value){
      opts[&#039;type&#039;] = value;
      $(&#039;#chartd7421633ba2 svg&#039;).empty();
      drawChart(opts, data)
    })
  
});

function drawChart(opts, data){  
  var data = d3.nest()
    .key(function(d){
      return opts.group === undefined ? &#039;main&#039; : d[opts.group]
    })
    .entries(data)
  
  var chart = nv.models[opts.type]()
      .x(function(d) { return d[opts.x] })
      .y(function(d) { return d[opts.y] })
      .width(opts.width)
      .height(opts.height)
     
 
      
 

 

   

   d3.select(&quot;#&quot; + opts.id + &#039; svg&#039;)
    .datum(data)
    .transition().duration(500)
    .call(chart);

   nv.utils.windowResize(chart.update);
   return chart
};
&lt;/script&gt;
&lt;script src=&#039;http://dat-gui.googlecode.com/git/build/dat.gui.min.js&#039;&gt;&lt;/script&gt;
    
    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  nvd3  ' id='iframe-chartd7421633ba2'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>
