---
title       : MaternityLeaveResults
subtitle    : 
author      : Irina Goloshchapova
job         : Expert CMASF
framework   : deckjs      # {io2012, html5slides, shower, dzslides, ...}
deckjs      : {theme: swiss, transition: vertical-slide}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
widgets     : []    
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

### 1. Визуализация
#### All what you want to know but are afraid to ask...

### 2. Automatization

### 3. Machine Learning

---
## Visualization

1. **Any kind of static graphs**  
   - from simple ggplot2 to complex spatial models and panel graphics  

2. **Animated graphics**  

3. **Interactive graphics and presentations**  
   - *graphics*: from simple time series to complex interaction with user  
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


<iframe src = "highmap.html" width = '750px' height = '600px'> </iframe>

---
## Interactive graphics and presentations  
#### Time Series


<iframe src = "DVis_PA1_for_pres.html" width = '900px' height = '700px'> </iframe>

---
## Interactive graphics and presentations  
#### Simple graphs with controls

<!-- MotionChart generated in R 3.2.3 by googleVis 0.5.10 package -->
<!-- Wed Mar 02 23:39:55 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMotionChartID8801067f26 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Apples",
2008,
"West",
98,
78,
20,
"2008-12-31" 
],
[
 "Apples",
2009,
"West",
111,
79,
32,
"2009-12-31" 
],
[
 "Apples",
2010,
"West",
89,
76,
13,
"2010-12-31" 
],
[
 "Oranges",
2008,
"East",
96,
81,
15,
"2008-12-31" 
],
[
 "Bananas",
2008,
"East",
85,
76,
9,
"2008-12-31" 
],
[
 "Oranges",
2009,
"East",
93,
80,
13,
"2009-12-31" 
],
[
 "Bananas",
2009,
"East",
94,
78,
16,
"2009-12-31" 
],
[
 "Oranges",
2010,
"East",
98,
91,
7,
"2010-12-31" 
],
[
 "Bananas",
2010,
"East",
81,
71,
10,
"2010-12-31" 
] 
];
data.addColumn('string','Fruit');
data.addColumn('number','Year');
data.addColumn('string','Location');
data.addColumn('number','Sales');
data.addColumn('number','Expenses');
data.addColumn('number','Profit');
data.addColumn('string','Date');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMotionChartID8801067f26() {
var data = gvisDataMotionChartID8801067f26();
var options = {};
options["width"] =    550;
options["height"] =    450;
options["state"] = "";

    var chart = new google.visualization.MotionChart(
    document.getElementById('MotionChartID8801067f26')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "motionchart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMotionChartID8801067f26);
})();
function displayChartMotionChartID8801067f26() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMotionChartID8801067f26"></script>
 
<!-- divChart -->
  
<div id="MotionChartID8801067f26" 
  style="width: 550; height: 450;">
</div>

---
## Interactive graphics and presentations  
#### Combinations of simple graphs

<!-- GeoChart generated in R 3.2.3 by googleVis 0.5.10 package -->
<!-- Thu Mar 03 16:31:00 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataGeoChartID51073d1602a () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Germany",
3 
],
[
 "Brazil",
4 
],
[
 "United States",
5 
],
[
 "France",
4 
],
[
 "Hungary",
3 
],
[
 "India",
2 
],
[
 "Iceland",
1 
],
[
 "Norway",
4 
],
[
 "Spain",
5 
],
[
 "Turkey",
1 
] 
];
data.addColumn('string','Country');
data.addColumn('number','Profit');
data.addRows(datajson);
return(data);
}


// jsData 
function gvisDataTableID510276e2e9b () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Germany",
3,
true 
],
[
 "Brazil",
4,
false 
],
[
 "United States",
5,
true 
],
[
 "France",
4,
true 
],
[
 "Hungary",
3,
false 
],
[
 "India",
2,
true 
],
[
 "Iceland",
1,
false 
],
[
 "Norway",
4,
true 
],
[
 "Spain",
5,
true 
],
[
 "Turkey",
1,
false 
] 
];
data.addColumn('string','Country');
data.addColumn('number','Profit');
data.addColumn('boolean','Online');
data.addRows(datajson);
return(data);
}


// jsData 
function gvisDataColumnChartID51021a73f45 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Mon",
28,
38 
],
[
 "Tues",
38,
55 
],
[
 "Wed",
55,
77 
],
[
 "Thurs",
77,
66 
],
[
 "Fri",
66,
22 
] 
];
data.addColumn('string','Weekday');
data.addColumn('number','Open');
data.addColumn('number','Close');
data.addRows(datajson);
return(data);
}


// jsData 
function gvisDataAreaChartID510158217fb () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Mon",
28,
38 
],
[
 "Tues",
38,
55 
],
[
 "Wed",
55,
77 
],
[
 "Thurs",
77,
66 
],
[
 "Fri",
66,
22 
] 
];
data.addColumn('string','Weekday');
data.addColumn('number','Open');
data.addColumn('number','Close');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartGeoChartID51073d1602a() {
var data = gvisDataGeoChartID51073d1602a();
var options = {};
options["width"] =    350;
options["height"] =    200;

    var chart = new google.visualization.GeoChart(
    document.getElementById('GeoChartID51073d1602a')
    );
    chart.draw(data,options);
    

}
  


// jsDrawChart
function drawChartTableID510276e2e9b() {
var data = gvisDataTableID510276e2e9b();
var options = {};
options["allowHtml"] = true;
options["width"] =    350;
options["height"] =    300;

    var chart = new google.visualization.Table(
    document.getElementById('TableID510276e2e9b')
    );
    chart.draw(data,options);
    

}
  


// jsDrawChart
function drawChartColumnChartID51021a73f45() {
var data = gvisDataColumnChartID51021a73f45();
var options = {};
options["allowHtml"] = true;
options["legend"] = "none";
options["width"] =    350;
options["height"] =    250;

    var chart = new google.visualization.ColumnChart(
    document.getElementById('ColumnChartID51021a73f45')
    );
    chart.draw(data,options);
    

}
  


// jsDrawChart
function drawChartAreaChartID510158217fb() {
var data = gvisDataAreaChartID510158217fb();
var options = {};
options["allowHtml"] = true;
options["legend"] = "none";
options["width"] =    350;
options["height"] =    250;

    var chart = new google.visualization.AreaChart(
    document.getElementById('AreaChartID510158217fb')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "geochart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartGeoChartID51073d1602a);
})();
function displayChartGeoChartID51073d1602a() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}


// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "table";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartTableID510276e2e9b);
})();
function displayChartTableID510276e2e9b() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}


// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartColumnChartID51021a73f45);
})();
function displayChartColumnChartID51021a73f45() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}


// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartAreaChartID510158217fb);
})();
function displayChartAreaChartID510158217fb() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartGeoChartID51073d1602a"></script>


<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartTableID510276e2e9b"></script>


<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartColumnChartID51021a73f45"></script>


<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartAreaChartID510158217fb"></script>
 
<table border="0">
<tr>
<td>

<table border="0">
<tr>
<td>

<!-- divChart -->
  
<div id="GeoChartID51073d1602a" 
  style="width: 350; height: 200;">
</div>

</td>
</tr>
<tr>
<td>

<!-- divChart -->
  
<div id="TableID510276e2e9b" 
  style="width: 350; height: 300;">
</div>

</td>
</tr>
</table>

</td>
<td>

<table border="0">
<tr>
<td>

<!-- divChart -->
  
<div id="ColumnChartID51021a73f45" 
  style="width: 350; height: 250;">
</div>

</td>
</tr>
<tr>
<td>

<!-- divChart -->
  
<div id="AreaChartID510158217fb" 
  style="width: 350; height: 250;">
</div>

</td>
</tr>
</table>

</td>
</tr>
</table>

---
## Interactive graphics and presentations  
#### Interesting: Sankey plot

<iframe src=' assets/fig/rcharts_3-1.html ' scrolling='no' frameBorder='0' seamless class='rChart http://timelyportfolio.github.io/rCharts_d3_sankey/libraries/widgets/d3_sankey ' id=iframe- chart8807cd24d70 ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>

---
## Interactive graphics and presentations  
#### Interesting: graph analysis

<iframe src = "network.html" width = '1000px' height = '750px'> </iframe>

---
## Interactive graphics and presentations  
#### Interesting: graph analysis

<iframe src = "network2.html" width = '1000px' height = '750px'> </iframe>

---
## Interactive graphics and presentations  
#### Interesting: path diagram

<iframe src = "http://timelyportfolio.github.io/rCharts_512paths/" width = '1050px' height = '800px'> </iframe>

---
## Interactive graphics and presentations  
#### Plot.ly

<iframe src = "https://plot.ly/r/" width = '1050px' height = '800px'> </iframe>

---
## Interactive graphics and presentations  
#### Tableau

<iframe src = "https://public.tableau.com/s/gallery" width = '1050px' height = '800px'> </iframe>
