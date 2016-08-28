---
title       : Совмещение R и Python
subtitle    : Зачем, когда и как
author      : Ирина Голощапова
job         : Эксперт направления анализа денежно-кредитной политики и банковского сектора ЦМАКП
logo        : logo2.jpg
framework   : io2012      # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
widgets     : [bootstrap]    
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- &vcenter bg:#F0F1EE

<style>
em {
  font-style: italic
}

strong {
  font-weight: bold;
}

sup {
  top: -0.5em;
  vertical-align: baseline;
  font-size: 75%;
  line-height: 0;
  position: relative;
}

bigfont {
  font-size: 70px;
  font-weight: bold;
  color: #535E43;
}

</style>

<bigfont>Why</bigfont>

--- .class #id 

## Why

1. **_Synergy of inference_**: connecting powerful libs of two languages for specific themes of research 
2. **_Speed and comfort_**: combination of various skills in both languages

--- .class #id 

## Why
### Synergy of inference  
*Connecting powerful libs of two languages for specific themes of research*:
- **_Python_**. General programming language. In favor by programmers. (More stable and logical, and on average faster):  
       - Web scraping and crawling (beautifulsoup, Scrapy, etc.) 
       - Connections to databases and other applications (sqlachemy, etc.) 
       - Classical machine learning algorithms (scikit-learn, pandas, numpy, scipy, etc.)  
- **_R_**. Extensive collection of packages. (You are just have an idea about package but someone already done a package about that):  
   - Statistical analysis options. Especially in area of specific disciplines' models and tests - for example, time series analysis tools (trading, econometrics and other) 
   - Interactive graphics/dashboards/applications. (htmlwidgets, flexdashboard, shiny, slidify and a lot a lot more etc., less code and great result + integration with js = great possibilities of relatively fast and deep customization)
   - Wide tools for data munging (dplyr, data.table, big.data.table, etc.)

--- .class #id 

## Why
### Speed and comfort  

*Combination of various skills in both languages*:

- different language knowledge degree of your colleagues  

- your relevant experience in specific tasks  

- syntactic preferences for concrete tasks

--- &vcenter bg:#F0F1EE

<bigfont>When</bigfont>

--- .class #id 

## When

1. Exploratory data analysis
2. Prototyping
3. Wide by scientific or practical areas project
4. Very ~~close deadline~~ short time limits for the task

--- &vcenter bg:#F0F1EE

<bigfont>How</bigfont>

--- .class #id 

## How

1. **_Command line tools_**. Command line + medium storage combination.  
   Executing from one of the languages by system commands or directly through command line.  
      
2. **_Interfacing_**. Running two persistent R and Python processes at once, and passing data between them. 

--- {class: class, tpl: tabs}

## How - Command line tools

*** {class: active, id: cmd}
Command line commands

`<command_to_run> <path_to_script> <any_additional_arguments>`  
  
Command           |Python                                       | R
------------------|---------------------------------------------|--------------------------------------------
*Cmd scripting*   |`python path/to/myscript.py arg1 arg2 arg3`  | `Rscript path/to/myscript.R arg1 arg2 arg3` 
*Fetch arguments* |`#character vector of all arguments`<br>`myArgs <- commandArgs(trailingOnly = TRUE)` | `#list, 1st el. - file executed`<br>`import sys` <br>`my_args = sys.argv`


*** {id: medium_storage}
Medium storage strategy

Medium Storage  | Python     | R
----------------|------------|----------
*Flat files*    | =======    | =======
csv             | csv        | readr
json            | json       | jsonlite
yaml            | PyYAML     | yaml
*Databases*     | =======    | =======
SQL             | sqlalchemy<br>pyodbc | sqlite, RODBS,<br>RMySQL, dplyr
NoSQL           | PyMongo    | RMongo
*FEATHER*       | =======    | =======
 feather format | feather    | feather

*** {id: examples}

Ex |Python   | R
---|---------|----------
   |Row 1    | Row 1
   |Row 2    | Row 2

*** {id: pros_cons}

Tab3

--- .class #id

## How
### Command line tools

Column X | Column Y
---------|----------
Row 1    | Row 1
Row 2    | Row 2

Medium storage/Intermediate files:  
      - flat files (mango solutions great post series - link!!!)  
      - databases (sqlite, etc.)  
      - feather format - especially for data frames

<div class='source'>
  Source: <a href='http://www.mango-solutions.com/wp/2015/12/integrating-python-and-r-part-iii-an-extended-example/'>Mango-solutions posts series</a>
</div>

--- .class #id 
  
## How
### Interfacing R and Python
  
**Blocks**
  
<div class="alert alert-info">
 <p>This is an alert info block which should render in blue</p>
</div>
  
**Tooltips**
  
This is to check out tooltips in bootstrap <a href="#" rel="tooltip" data-original-title="Default tooltip">you probably</a>
  
**Popover**
  
<a class="btn btn-large btn-danger" rel="popover" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" id='example'>Click to toggle popover</a>

--- &twocol

## Put your header here
And maybe a line of description, or a plot you want to appear above the columns

*** =left
### This will be the left header
* this is a list on the left
* second item in the list


```r
    randomvals<-rnorm(75,5,.5)
    par(mfrow=c(1,2))
    hist(randomvals,xlab='Some random numbers')
    plot(randomvals,xlab='Some random numbers',ylab='value',pch=3)
```

*** =right
### This will be the right header
you could place a descriptive image on the right

--- .class #id 

## How  
### Extended example  

Downloading data - inlation in IT countries (yearly for post-crisis period) - from WB (Python) and plotting beautiful radial boxplot in R (weather ... in my scripts)

--- {
 tpl: thankyou,
 social: [{title: gmail, href: "igoloshchapova@forecast.ru"},
 {title: github, href: "irinagoloshchapova"},
 {title: repo, href: "Progs/DataFest2016_R_Py"}],
 bg: "#F0F1EE"
}

## Thank you for your attention

For more information you can contact me.
