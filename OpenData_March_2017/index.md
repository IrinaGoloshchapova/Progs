---
title: Intro to download economic data in R
author: Irina Goloshchapova - Senior Expert in CMASF
mode : selfcontained
framework: revealjs
hitheme : zenburn
revealjs:
  theme: solarized
  transition: none
  center: "true"
url: {lib: "."}
bootstrap:
  theme: amelia
navbar:
  title: Slidify
  items: 
    - {item: Home, href: index,  icon: home}
    - {item: "Start", href: start, icon: signin}
    - {item: Author, href: about, icon: pencil}
    - {item: Style, href: style, icon: hand-right, class: dropdown, 
        dropdown: true, menu: [
         {item: io2012, href: 'samples/intro'},
         {item: deck.js, href: 'samples/deck.js'},
         {item: shower, href: 'samples/shower'},
         {item: landslide, href: 'samples/landslide'}
        ]
      }
    - {item: Customize, href: customize, icon: gift}
    - {item: Extend, href: extend, icon: cogs}
    - {item: Publish, href: publish, icon: github}
---
# Intro to download economic data in R


Irina Goloshchapova  
Center for Macroeconomic Analysis and Short-Term Forecasting   
Open Data Science

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

---
## Plan

- Why we want to automate the download data process  

- What we should use in R if we want download open economic data  

- How we should use it  


--- &vertical
## Why automate

***
## Why automate  

- Frequent need to quickly access the data: regular monitoring, dashboard  
- Complex computations with data to obtain final dataset  
- You need big data  
- Database structure in your pocket 

--- &vertical

## What we should use

***
## What we should use   

- R Packages  
- Self connection functions to API  

--- &vertical

## How to use  

***
## How to use: R Packages  

Firstly: [Google it!](http://bfy.tw/AJQ6)

![cat_lazy_google](assets/img/lazy_cat.gif)

***
## How to use: R Packages  

- **World Bank**: [WDI](https://github.com/vincentarelbundock/WDI), [wbstats](https://github.com/GIST-ORNL/wbstats)  

- **International Monetary Fund**: [IMFData](https://github.com/mingjerli/IMFData), [imfr](https://github.com/christophergandrud/imfr) 

***
## How to use: R Packages  
### Key principles  

- **Read materials and choose package**: CRAN, *GitHub*  

- **Undestand searching and downloading structure in the chosen package**: Tutorials  

- **Try simple example**: GitHub, R-Bloggers, Google  

- **Download what do you need**: R  

***
## How to use: R Packages  
### Prerequisites 


```r
install.packages('devtools')
install.packages('tidyverse')
devtools::install_github("vincentarelbundock/WDI")
devtools::install_github("GIST-ORNL/wbstats")
devtools::install_github('mingjerli/IMFData')
devtools::install_github('christophergandrud/imfr')
```


***
## How to use: R Packages  
### Example: World Bank

**Read materials and choose package**

[WDI](https://github.com/vincentarelbundock/WDI) **_or_** [wbstats](https://github.com/GIST-ORNL/wbstats)

***
## How to use: R Packages  
### Example: World Bank  

<iframe src='https://cran.r-project.org/web/packages/wbstats/vignettes/Using_the_wbstats_package.html' width = '960px' height = '600px'></iframe>

***
## How to use: R Packages  
### Example: World Bank  

**Undestand searching and downloading structure in the chosen package**  

- install package  

- search needed indicators codes  

- define sample of countries  

- define period of time  

- define final data format  

- download

***
## How to use: R Packages  
### Example: World Bank  

**Try simple example**  


```r
library(wbstats)
library(ggplot2)

oil_data <- wb(indicator = c("CRUDE_DUBAI", "CRUDE_BRENT", "CRUDE_WTI", "CRUDE_PETRO"),
               startdate = "2012M01", enddate = "2014M12", freq = "M", POSIXct = TRUE)

ggplot(oil_data, aes(x = date_ct, y = value, colour = indicator)) + geom_line(size = 1) +
  labs(title = "Crude Oil Price Comparisons", x = "Date", y = "US Dollars")
```

***
## How to use: R Packages  
### Example: World Bank  

**Download what do you need**  


```r
library(wbstats)
library(ggplot2)

wbsearch(pattern = "inflation", fields = "indicator", extra = TRUE)

#             indicatorID                             indicator
# 8294  NY.GDP.DEFL.KD.ZG    Inflation, GDP deflator (annual %)
# 10895    FP.CPI.TOTL.ZG Inflation, consumer prices (annual %)

deflator <- wb(indicator = "NY.GDP.DEFL.KD.ZG", country = "RU", mrv = 16, freq = "Y", POSIXct = TRUE)
CPI <- wb(indicator = "FP.CPI.TOTL.ZG", country = "RU", mrv = 16, freq = "Y", POSIXct = TRUE)

inflation_data <- rbind(deflator, CPI)

g <- ggplot(inflation_data, aes(x = date_ct, y = value, colour = indicator)) + geom_line(size = 1)
g <- g + labs(title = "Inflation data", x = NULL, y = NULL)
g <- g + guides(colour = guide_legend(title = '', size = 3.5))
g <- g + theme_minimal()
g <- g + scale_colour_brewer(palette = 'Set2')
g <- g + theme(legend.position = 'top')
g
```

***
## How to use: R Packages  
### Example: World Bank  

**Visualize results** 

![inflation_wb_results](assets/img/wbstats_inflation.png)

***
## How to use: R Packages  
### Example: International Monetary Fund

**Read materials and choose package**

[IMFData](https://github.com/mingjerli/IMFData) **_or_** [imfr](https://github.com/christophergandrud/imfr)

***
## How to use: R Packages  
### Example: International Monetary Fund

<iframe src='https://cran.r-project.org/web/packages/IMFData/README.html' width = '960px' height = '600px'></iframe>

***
## How to use: R Packages  
### Example: International Monetary Fund

**Undestand searching and downloading structure in the chosen package**  

- install package  

- choose database ID

- define database dimensions and their codes

- search needed indicators codes  

- define sample of countries  

- define period of time  

- define final data format  

- download

***
## How to use: R Packages  
### Example: International Monetary Fund

**Try simple example**  


```r
library(IMFData)

databaseID <- "IFS"
startdate = "2001-01-01"
enddate = "2016-12-31"
checkquery = FALSE

## Germany, Norminal GDP in Euros, Norminal GDP in National Currency
queryfilter <- list(CL_FREQ = "", CL_AREA_IFS = "GR", CL_INDICATOR_IFS = c("NGDP_EUR", 
    "NGDP_XDC"))

GR.NGDP.query <- CompactDataMethod(databaseID, queryfilter, startdate, enddate, 
    checkquery)

GR.NGDP.query$Obs[[1]][1:5, ]
#   @TIME_PERIOD @OBS_VALUE
# 1      2001-Q1    35.2366
# 2      2001-Q2    36.7264
# 3      2001-Q3    39.8428
# 4      2001-Q4    40.3881
# 5      2002-Q1    37.4971
```

***
## How to use: R Packages  
### Example: International Monetary Fund

**Download what do you need**  


```r
library(IMFData)
library(ggplot2)

availableDB$DatabaseID
# FSI
# "Financial Soundness Indicators (FSI)" 
FSI.available.codes <- DataStructureMethod("FSI")
names(FSI.available.codes)
# [1] "CL_FREQ"          "CL_AREA_FSI"      "CL_INDICATOR_FSI"

CodeSearch(FSI.available.codes, "CL_INDICATOR_FSI", "stability")
CodeSearch(FSI.available.codes, "CL_INDICATOR_FSI", "Debt")
# FSHG_PT
# Financial Soundness Indicators, Encouraged Set, Households, Household Debt to Gross Domestic Product (GDP), Percent

databaseID <- "FSI"
startdate = "2000-01-01"
enddate = "2016-12-31"
checkquery = FALSE

queryfilter <- list(CL_FREQ = "", CL_AREA_FSI = "RU", CL_INDICATOR_FSI = "FSHG_PT")
indicator_query <- CompactDataMethod(databaseID, queryfilter, startdate, enddate, checkquery)
indicator_query$Obs[[1]]
```

***
## How to use: R Packages  
### Example: World Bank  

**Visualize results** 

![fsi_results](assets/img/hous_debt.png)

--- &vertical

## Contacts and collaboration

Irina Goloshchapova - @irina_g ([ods](http://ods.ai/)), igoloshchapova@forecast.ru  

[R Moscow Meetup](https://www.meetup.com/rMoscow/)  

[Data Visualization Meetup](https://www.meetup.com/Moscow-Data-Visualization-Meetup/)  

<iframe src='http://ods.ai/' width = '960px' height = '600px'></iframe>
