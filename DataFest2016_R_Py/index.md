---
title       : Совмещение R и Python
subtitle    : Why, when and how
author      : Irina Goloshchapova
job         : Expert, CMASF
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

<bigfont>РџРѕС‡РµРјСѓ</bigfont>

--- .class #id 

## РџРѕС‡РµРјСѓ

1. **_РЎРёРЅРµСЂРіРёСЏ РїСЂРµРёРјСѓС‰РµСЃС‚РІ_**: СЃРѕРІРјРµС‰РµРЅРёРµ РјРѕС‰РЅС‹С… СЃС‚Р°Р±РёР»СЊРЅС‹С… Р±РёР±Р»РёРѕС‚РµРє R Рё Python РґР»СЏ РІС‹РїРѕР»РЅРµРЅРёСЏ РѕС‚РґРµР»СЊРЅС‹С… Р·Р°РґР°С‡ 
2. **_РЎРєРѕСЂРѕСЃС‚СЊ Рё СѓРґРѕР±СЃС‚РІРѕ_**: РєРѕРјР±РёРЅР°С†РёСЏ РЅР°РІС‹РєРѕРІ РїСЂРѕРіСЂР°РјРјРёСЂРѕРІР°РЅРёСЏ РЅР° R Рё Python

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

1. **_Command line tools_**. Command line + medium storage as an 'air gap' combination.  
   Executing from one of the languages by system commands or directly through command line.  
      
2. **_Interfacing_**. Running two persistent R and Python processes at once, and passing data between them. 

3. **_Other ways_**.

--- {class: class, tpl: tabs}

## How - Command line tools

*** {class: active, id: cmd}
Command line scripting

`<cmd_to_run> <path_to_script> <any_additional_args>`  
  
Command           |Python                                       | R
------------------|---------------------------------------------|--------------------------------------------
*Cmd*   |`python path/to/myscript.py arg1 arg2 arg3`  | `Rscript path/to/myscript.R arg1 arg2 arg3` 
*Fetch arguments* |`#character vector of args`<br>`myArgs <- commandArgs(trailingOnly = TRUE)` | `#list, 1st el. - file executed`<br>`import sys` <br>`my_args = sys.argv`


*** {id: air_gap}
Medium storage strategy

Medium Storage  | Python     | R
----------------|------------|----------
*Flat files*    | =======    | =======
csv             | csv        | readr, data.table
json            | json       | jsonlite
yaml            | PyYAML     | yaml
*Databases*     | =======    | =======
SQL             | sqlalchemy, pandasql<br>pyodbc | sqlite, RODBS,<br>RMySQL, sqldf, dplyr
NoSQL           | PyMongo    | RMongo
*Feather*       | =======    | =======
for data frames | feather    | feather

*** {id: benchmark}

![bench_feather](assets/img/Mbchm_r_py.png)

--- {class: class, tpl: tabs}

## How - Command line tools - Examples

*** {class: active, id: max_R}


```r
# max.R
randomvals <- rnorm(75, 5, 0.5)
par(mfrow = c(1, 2))
hist(randomvals, xlab = 'Some random numbers')
plot(randomvals, xlab = 'Some random numbers', ylab = 'value', pch = 3)
```

*** {id: splitstr_py}


```r
# splitstr.py
import sys

# Get the arguments passed in
string = sys.argv[1]
pattern = sys.argv[2]

# Perform the splitting
ans = string.split(pattern)

# Join the resulting list of elements into a single newline
# delimited string and print
print('\n'.join(ans))
```

*** {id: RfromPy}


```r
# calling R from Python
import subprocess

# Define command and arguments
command = 'Rscript'
path2script = 'path/to your script/max.R'

# Variable number of args in a list
args = ['11', '3', '9', '42']

# Build subprocess command
cmd = [command, path2script] + args

# check_output will run the command and store to result
x = subprocess.check_output(cmd, universal_newlines=True)

print('The maximum of the numbers is:', x)
```

*** {id: PyfromR}


```r
# calling Python from R
command = "python"

# Note the single + double quotes in the string (needed if paths have spaces)
path2script ='"path/to your script/splitstr.py"'

# Build up args in a vector
string = "3523462---12413415---4577678---7967956---5456439"
pattern = "---"
args = c(string, pattern)

# Add path to script as first arg
allArgs = c(path2script, args)

output = system2(command, args=allArgs, stdout=TRUE)

print(paste("The Substrings are:\n", output))
```

--- .class #id 

## How - Command line tools - Pros&Cons

### Pros

- Simplest method, so commonly the quickest
- Can view the intermediate outputs easily
- Parsers already exist for many common file formats

### Cons

- Need to agree upfront on a common schema or file format
- Can become cumbersome to manage intermediate outputs and paths if the pipeline grows.
- Reading and writing to disk can become a bottleneck if data becomes large.

<div class='source'>
  Source: <a href='http://www.mango-solutions.com/wp/2015/12/integrating-python-and-r-part-iii-an-extended-example/'>Mango-solutions posts series</a>
</div>

--- &twocol
  
## How - Interfacing R and Python
  
<a class="btn btn-medium btn-warning" rel="popover" data-content="Windows support is weak and unstable :-(" id='example'>Warning!</a>

*** =left
### R from Python

Packages   | [Comments](http://stackoverflow.com/questions/5630441/how-do-rpy2-pyrserve-and-pyper-compare)
-----------|------------
[*rpy2*](http://rpy2.bitbucket.org/)    | - C-level interface<br>- direct support by pandas<br>- supports graphics (+ggplot2)<br>- [limited windows support](http://eurekastatistics.com/installing-rpy2/)  
[*pyper*](https://pypi.python.org/pypi/PypeR/1.1.0)  | - Python code<br>- use of pipes (on average faster)<br>- undirect support by pandas<br>- limited support for graphics<br>- documentation difficulties
[*pyrserve*](https://pypi.python.org/pypi/pyRserve/) | - Python code<br>- remote computation/through Rserve<br>- no support for data frames

*** =right
### Python from R

Packages   | Comments
-----------|------------
[*rPython*](https://rpython.readthedocs.io/en/latest/)    | - Java code<br>- data transportation through json<br>- no direct data frames transportation<br>- [good documentation](https://cran.r-project.org/web/packages/rPython/rPython.pdf) (simple in use)<br>- [limited windows support](https://github.com/cjgb/rPython-win)<br>- fails with Anaconda Python installation
[*RSPython*](http://www.omegahat.net/RSPython/) | - two-sided interface<br>- no support after 2005<br>- weak windows support
[*Rcpp*](http://gallery.rcpp.org/articles/rcpp-python/) | - through C++ ([Boost.Python](http://www.boost.org/doc/libs/1_55_0/libs/python/doc/) and [Rcpp](http://www.rcpp.org/))<br>- need of specific skills<br>- [good example](http://gallery.rcpp.org/articles/rcpp-python/)

--- {class: class, tpl: tabs}

## How - Interfacing R and Python - Examples

*** {class: active, id: rpy2}


```r
from rpy2.robjects import pandas2ri # loading rpy2
from rpy2.robjects import r
pandas2ri.activate() # activating pandas module
df_iris_py = pandas2ri.ri2py(r['iris']) # from r data frame to pandas
df_iris_r = pandas2ri.py2ri(df_iris_py) # from pandas to r data frame 
plotFunc = r("""
   library(ggplot2)
   function(df){
   p <- ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) 
          + geom_point(aes(color = Species))
   print(p)
   ggsave('iris_plot.pdf', plot = p, width = 6.5, height = 5.5)
 }
""") # ggplot2 example
gr = importr('grDevices') # necessary to shut the graph off
plotFunc(df_iris_r)
gr.dev_off()
```

*** {id: rPython}


```r
library(rPython)

# data frames transportation
python.assign('iris_py_dict', iris) # r data.frame to python dict
python.exec('import pandas as pd')
# convert dict to pd data frame
python.exec('iris_py_df = pd.DataFrame(iris_py_dict)')
# convert pd df back to dict
python.exec('iris_py_dict = iris_py_df.to_dict(outtype = "list")') 
# dict to r list to data frame
iris_df <- data.frame(python.get('py_dict2')) 

# python get/python_load
python.load("hello_world.py") ## hello_world = 'hello' + 'world' +'!'
greeting <- python.get("hello_world")
print(greeting) # class character
```

--- .class #id 

## How - Interfacing R and Python - Pros&Cons

### Pros

- Most flexible and interactive method
- Fast in-memory objects transportation for the most packages

### Cons

- **Need to read tutorials!**
- Objects types coercion and objects transportation specifics
- Transporting large data could also be difficult
- Weak windows support (could be overcome for the most packages)
- Often unstable between versions

--- .class #id 

## How - Other approaches

- Notebooks
   - [Jupiter Notebook](http://jupyter.org/)  
         > [IRKernel](http://blog.revolutionanalytics.com/2015/09/using-r-with-jupyter-notebooks.html)  
         > [R magic + rpy2](https://github.com/michhar/rpy2_sample_notebooks/blob/master/TestingRpy2.ipynb)  
   - [Beaker Notebook](http://beakernotebook.com/)  

- Platforms
   - [Sense](https://sense.io/) --> [Cloudera](http://blog.sense.io/sense-joins-cloudera/)
   - [SAS](http://blog.revolutionanalytics.com/2015/05/call-r-and-python-from-base-sas.html)
   - [H2O](http://www.h2o.ai/product/)  
         > [connector for python](https://pypi.python.org/pypi/h2o)  
         > [connector for R](https://cran.r-project.org/web/packages/h2o/h2o.pdf)  
   - ...

--- .class #id 

## How - Extended example  

<iframe src = "https://pub.beakernotebook.com/publications/bca2b1e2-7202-11e6-899f-7b213714358c?fullscreen=true"> </iframe>

--- .class #id 

## Conclusions

- <strong><em>possible and necessary to combine R and Python!</em></strong>
- carefully choose combination methods based on your project goals  
     - <strong>command line tools</strong>: simple, clear and definitely would work.  
       Good for the first step!  
       Attention to feather!
     - <strong>interfacing R and Python</strong>: faster, flexible and more interactive.  
       Have specific lexicon, need to read tutorial, more complex configuration.  
       Use proven and stable libraries: rpy2 and rPython.
     - <strong>other methods</strong>. Attention to Beaker Notebook!

--- {
 tpl: thankyou,
 social: [{title: gmail, href: "igoloshchapova@forecast.ru"},
 {title: github, href: "irinagoloshchapova"},
 {title: repo, href: "Progs/DataFest2016_R_Py"}],
 bg: "#F0F1EE"
}

## Thank you for your attention

For more information you can contact me.
