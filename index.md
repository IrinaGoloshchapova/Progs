---
title       : MaternityLeaveResults
subtitle    : 
author      : Irina Goloshchapova
job         : Expert CMASF
framework   : deckjs      # {io2012, html5slides, shower, dzslides, ...}
deckjs      : {theme: swiss, transition: vertical-slide}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
widgets     : [bootstrap, quiz, shiny, interactive]    
ext_widgets : {rCharts: ['libraries/nvd3', 'libraries/leaflet']}
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
#### Maps


<iframe src = "map_gdp.html" width = '600px' height = '500px'> </iframe>

--- &interactive
## Interactive graphics and presentations  
#### Graphs with controls

<div class="row-fluid">
  <div class="col-sm-4">
    <form class="well">
      <div class="form-group shiny-input-container">
        <label class="control-label" for="sex">Choose Sex</label>
        <div>
          <select id="sex"><option value="Male" selected>Male</option>
<option value="Female">Female</option></select>
          <script type="application/json" data-for="sex" data-nonempty="">{}</script>
        </div>
      </div>
      <div class="form-group shiny-input-container">
        <label class="control-label" for="type">Choose Type</label>
        <div>
          <select id="type"><option value="multiBarChart" selected>multiBarChart</option>
<option value="multiBarHorizontalChart">multiBarHorizontalChart</option></select>
          <script type="application/json" data-for="type" data-nonempty="">{}</script>
        </div>
      </div>
    </form>
  </div>
  <div class="col-sm-8">
    <div id="nvd3plot" class="shiny-html-output nvd3 rChart"></div>
  </div>
</div>
