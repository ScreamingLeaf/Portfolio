install.packages("readxl", dependencies = TRUE)
install.packages("Rcpp")
library(readxl)
data = read_excel("BrownFat.xls")
colnames(data)[14] = "Weight"

selected_columns = c("Sex","Diabetes","Age", "Season", "Weight", "Size", "Glycemy","LBW","BrownFat")
df = cbind(data[,selected_columns])

columns.qt = c("Age","Weight","Size","Glycemy","LBW")
df.qt = data[,columns.qt]

summary(df$Age)
df[df$Age < 10,]
