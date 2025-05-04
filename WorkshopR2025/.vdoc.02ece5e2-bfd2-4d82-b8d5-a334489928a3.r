#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
library(readxl)
datapls <- read_excel('data/data_pls_sem.xlsx')
head(datapls)
#
#
#
str(datapls)
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
library(lavaan)
library(semPlot)
#
#
#
#
sem.model = "
faktor =~ A1 + A2 + A3 + A4
permintaan =~ B1 + B2  
industri =~ C1 + C2  
strategi =~ D1 + D2 + D3 + D4
regulasi =~ E1 + E2 + E3 + E4 + E5 + E6
kesempatan =~ F1 + F2 + F3 + F4

kesempatan ~ faktor + permintaan + industri + strategi + regulasi"
#
#
#
#
#
#
#
#
#
#
semPaths(sem.fit)
#
#
#
