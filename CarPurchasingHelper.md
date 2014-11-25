Car Purchasing Helper
========================================================
author: Zhengcheng Gu
date: Nov. 25, 2014
[Link] http://mysafesky.shinyapps.io/devDataProd/

Car Purchasing Helper
========================================================

Concept:
By sorting pre-collected data (For example: mtcars), the users may use this app quickly comparing
the properties they are interesting. This will help out their car purchasing decision making.

Function:
  - Display data table
  - Sorting the table as required
  - Can be ascend or descend
  - Can modified the total showing numbers.

Data
========================================================
As an alpha version of app, we use the R built-in data set **mtcars**

The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

In order to check the detail about package, please execute following command in your R console

```r
help(mtcars)
```

App UI Preview
========================================================

![Screen Capture of App UI](app.jpg)


Core Sorting Function
========================================================

The core of this app is sorting, here is a example of sorting and only display first 2 rows. The result display is a little bit messy here because of the limit of width

```r
attach(mtcars)
RowsToShow <- 1
colInterest <- mpg
result<- head(mtcars[order(colInterest),], n = RowsToShow)
result
```

```
                    mpg cyl disp  hp drat   wt  qsec vs am gear carb
Cadillac Fleetwood 10.4   8  472 205 2.93 5.25 17.98  0  0    3    4
```
