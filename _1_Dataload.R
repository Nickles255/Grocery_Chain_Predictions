##https://rstudio-pubs-static.s3.amazonaws.com/72295_692737b667614d369bd87cb0f51c9a4b.html

rm(list = ls())
setwd('c:\\data\\Grocery_Chain\\')
## list.files() ## list files in a directory
## g_train <- read.csv('train.csv', header=FALSE, stringsAsFactors = FALSE, nrow = 10000000)
g_train <- read.csv('.\\train_years\\2015.csv', header=FALSE, stringsAsFactors = FALSE)
names(g_train) <- c('id', 'date', 'store_nbr', 'item_nbr', 'onpromotion')
g_test  <- read.csv('test.csv', stringsAsFactors = FALSE)
subm <- read.csv('sample_.csv', stringsAsFactors = FALSE)

g_trans <- read.csv('transactions.csv', stringsAsFactors = FALSE)
g_oil  <- read.csv('oil.csv', stringsAsFactors = FALSE)
g_holiday <- read.csv('holidays_events.csv', stringsAsFactors = FALSE)
##    
## Causual examination.
a <- which(g_holiday$type == 'Event')
g_holiday[a, ]

a <- which(g_holiday$description == 'Traslado Independencia de Guayaquil')
b <- which(g_holiday$description == 'Independencia de Guayaquil')
c <- c(a, b)
g_holiday[c, ]

setwd('C:\\Users\\Acer\\Dropbox\\Kaggle\\Grocery_Chain\\')