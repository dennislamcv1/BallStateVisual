library(tidyverse)

df <- read.csv("Sampledata2.csv")

df <- df %>% mutate(RangeGroup=case_when(CrimeRate < 250 ~ "low crime", CrimeRate >= 250 & CrimeRate <= 500 ~ "medium crime", CrimeRate > 500 ~ "high crime")) 

n <- length(unique(df$Year))
col = colorspace::diverge_hcl(n)
col

col1=c("green","blue","red")
col1

ggplot(df, aes(x=CrimeRate, color=as.factor(Year), fill=as.factor(Year))) + 
  geom_histogram(position="dodge", binwidth=100, bins=5) +
  scale_color_manual(values=col) +
  scale_fill_manual(values=col) +
  labs(title="Crime Rate by Year", x="Crime Rate", y="Number of states with this crime rate per year") +
  theme_classic()

ggplot(df, aes(x=CrimeRate, color=as.factor(RangeGroup), fill=as.factor(RangeGroup))) + 
  geom_histogram(position="dodge") +
  scale_color_manual(values=col1) +
  scale_fill_manual(values=col1) +
  labs(title="Crime Rate by Range Grouping", x="Crime Rate", y="Number of years per state by crime rate") +
  theme_classic()