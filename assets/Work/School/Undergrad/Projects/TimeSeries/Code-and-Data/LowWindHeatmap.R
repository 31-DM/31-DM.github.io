library(tidyverse)
library(readxl)
library(ggplot2)
library(reshape)
library(reshape2)
library (data.table)


data <- read.csv("weather_all_teams.csv")
train <- data[,c(1:5,10:12,15)]

setnames(train, c("Date", "HomeTeam", "AwayTeam", "Home Score", "Away Score", "TotalScoreOpen", "TotalScore", "Differential", "WindSpeed"))

lowWind <- train[train$WindSpeed < 6, 4:9]

low_cor <- round(cor(lowWind),2)


# Get lower triangle of the correlation matrix
low_lower_tri<-function(low_cor){
  low_cor[upper.tri(low_cor)] <- NA
  return(low_cor)
}
# Get upper triangle of the correlation matrix
low_upper_tri <- function(low_cor){
  low_cor[lower.tri(low_cor)]<- NA
  return(low_cor)
}

upper_tri <- low_upper_tri(low_cor)

reorder_low_cor <- function(low_cor){
  # Use correlation between variables as distance
  dd <- as.dist((1-low_cor)/2)
  hc <- hclust(dd)
  low_cor <-low_cor[hc$order, hc$order]
}

# Reorder the correlation matrix
low_cor <- reorder_low_cor(low_cor)
upper_tri <- low_upper_tri(low_cor)
# Melt the correlation matrix
melted_low_cor <- melt(upper_tri, na.rm = TRUE)
# Create a ggheatmap
ggheatmap <- ggplot(melted_low_cor, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ # minimal theme
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
# Print the heatmap



ggheatmap + 
  geom_text(aes(Var2, Var1, label = value), color = "black", size = 4) +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.grid.major = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    axis.ticks = element_blank(),
    legend.justification = c(1, 0),
    legend.position = c(0.5, 0.8),
    legend.direction = "horizontal")+
  guides(fill = guide_colorbar(barwidth = 7, barheight = 1,
                               title.position = "top", title.hjust = 0.5))
