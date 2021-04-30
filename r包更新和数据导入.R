##r语言更新
install.packages("installr") 
library(installr) 
updateR(fast=TRUE,cran_mirror="https://mirrors.ustc.edu.cn/CRAN/") ##更新R软件
update.packages(repos = "https://mirrors.ustc.edu.cn/CRAN/",ask='graphics',checkBuilt=TRUE)##更新所有R包

##导入excel数据
##方法1
install.packages("installr")
install.packages("installr")
library(xlsx)
mydata<-"F:/03软件学习/数据/month_air.xlsx"
##上面先放弃

####方法2
install.packages("tidyverse")
install.packages("readxl")
install.packages("rematch")
library(tidyverse)
library(readxl)
xlsx1 <- read_excel("F:/03软件学习/数据/month_air.xlsx")
excel_sheets("F:/03软件学习/数据/month_air.xlsx")
xlsx2 <- read_excel("F:/03软件学习/数据/month_air.xlsx",
                   sheet=1)#读取sheet1工作表
xlsx3<- read_excel("F:/03软件学习/数据/month_air.xlsx",
                   n_max = 20)#读取前20行
xlsx4<- read_excel("F:/03软件学习/数据/month_air.xlsx",
                   range = cell_cols("B:D"))#B到D列
xlsx5<- read_excel("F:/03软件学习/数据/month_air.xlsx",
                   range = cell_rows(1:11))#1：11行
xlsx6<- read_excel("F:/03软件学习/数据/month_air.xlsx",
                   range = "B1:D11")#B1:D11区域

#其他参数
#sheet导入某个特定的工作表，默认第一个工作表
#range导入表格中特定区域的数据, 默认全区域
#col_names列名，默认为TRUE（第一行为列名）
#设置为F则列名为X1、X2…也可通过一个向量设置特定列名
#col_type	列的数据类型
#n_max设置读取最大的行数
#na	默认表示数据中的缺失值，
#   也可以将特定值设置为 缺失值
####导入sas数据
#方法1 Hmisc
library("Hmisc")
datadir<-"F:/03软件学习/数据"#数据所在路径
sasexe<-"D:/Program Files/SASHOME/SASFoundation/9.4/sas.exe"#sas运行程序路径
mydata<-sas.get(libraryName = datadir,member="month",
               sasprog = sasexe)

####导入csv格式文件
mydata1<-read.table("F:/03软件学习/数据/month.csv",
                   header = TRUE,sep = ",")

####导入stata数据
install.packages("foreign")
library(foreign)
mydata2<-read.dta("F:/03软件学习/数据/month.dta")


