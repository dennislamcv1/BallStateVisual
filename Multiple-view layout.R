library(tidyverse)
library("readxl")
library(gridExtra)

df <- read_excel("Sampledata2.xlsx")

ggplot(data = df) + 
geom_histogram(aes(x = CrimeRate, fill = Year), 
                 position = "dodge", 
                 binwidth = 10, 
                 color = "black") + 
labs(title = "Grouped Histogram of CrimeRate by Year", 
       x = "CrimeRate", 
       y = "Frequency") + 
theme(plot.title = element_text(hjust = 0.5))

ggplot(data = df) + 
  geom_point(aes(x = Year, y = CrimeRate)) + 
  labs(title = "Scatter Plot of Year and CrimeRate", 
       x = "Year", 
       y = "CrimeRate") + 
  theme(plot.title = element_text(hjust = 0.5))

ggplot(data = df) + 
  geom_boxplot(aes(x = Year, y = CrimeRate, fill = Year), 
               position = "dodge", 
               color = "black") + 
  labs(title = "Grouped Box Plot of CrimeRate by Year", 
       x = "Year", 
       y = "CrimeRate") + 
  theme(plot.title = element_text(hjust = 0.5))

# Create the plots
plot1 <- ggplot(data = df) + 
  geom_histogram(aes(x = CrimeRate, fill = Year), 
                 position = "dodge", 
                 binwidth = 10, 
                 color = "black") + 
  labs(title = "Grouped Histogram of CrimeRate by Year", 
       x = "CrimeRate", 
       y = "Frequency") + 
  theme(plot.title = element_text(hjust = 0.5))

plot2 <- ggplot(data = df) + 
  geom_point(aes(x = Year, y = CrimeRate)) + 
  labs(title = "Scatter Plot of Year and CrimeRate", 
       x = "Year", 
       y = "CrimeRate") + 
  theme(plot.title = element_text(hjust = 0.5))

plot3 <- ggplot(data = df) + 
  geom_boxplot(aes(x = Year, y = CrimeRate, fill = Year), 
               position = "dodge", 
               color = "black") + 
  labs(title = "Grouped Box Plot of CrimeRate by Year", 
       x = "Year", 
       y = "CrimeRate") + 
  theme(plot.title = element_text(hjust = 0.5))

# Arrange the plots
grid.arrange(plot1, plot2, plot3, ncol = 3)

