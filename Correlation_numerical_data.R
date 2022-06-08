# Install packages ggcorrplot and corrplot (if before was installed ggplot2 packages)
install.packages("corrplot")

install.packages("ggcorrplot")

library(corrplot)

library(ggcorrplot)

data = read.csv("https://storage.googleapis.com/dqlab-dataset/project.csv")

data_reduce = data[-c(1,2)]

M = data_reduce[,8:11]

#Library corrplot
#Pearson correlation
par(mfrow=c(2,2))
corrplot(cor(M), type="upper", order="hclust")
corrplot(cor(M), method="square", type="upper")
corrplot(cor(M), method="number", type="lower")
corrplot(cor(M), method="ellipse")

#--Kendall correlation
par(mfrow=c(2,2))
corrplot(cor(M, method="kendall"), type="upper", order="hclust")
corrplot(cor(M, method="kendall"), method="square", type="upper")
corrplot(cor(M, method="kendall"), method="number", type="lower")
corrplot(cor(M, method="kendall"), method="ellipse")

# Library ggcorrplot
corr = round(cor(M), 1) #Pearson correlation
ggcorrplot(round(cor(M), 1),
           hc.order = TRUE,
           type = "lower",
           lab = TRUE,
           lab_size = 3,
           method="circle",
           colors = c("tomato2", "white", "springgreen3"),
           title="Correlogram of Data Nasabah",
           ggtheme=theme_bw)
