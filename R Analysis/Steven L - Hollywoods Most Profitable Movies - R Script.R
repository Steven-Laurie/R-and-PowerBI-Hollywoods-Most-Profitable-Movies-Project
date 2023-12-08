#Step 1: Initial Exploratory Analysis

##Loading the Data
df = read.csv("HollywoodsMostProfitableStories.csv")

##Installing and Loading Tidyverse library
install.packages("tidyverse")
library(tidyverse)

##Taking a look at the Data
View(df)

##Checking the DataTypes
str(df)
typeof(df)

#Step 2: Cleaing the Data

##Checking for Missing Values
colSums(is.na(df))

##Droping the Missing Values
df = na.omit(df)

##Checking to see Missing Values are now removed
colSums(is.na(df))

#Step 3: Exploratory Data Analysis

##Summary Statistics
summary(df)

##Creating a Scatterplot
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

###This scatter plot shows Rotten Tomato scores for different films released under Lead Studios branding 

##Creating a Bar Chart
ggplot(df, aes(x=Year)) + geom_bar()

###This bar chart showcases the amount of films released by year in this DataFrame

#Step 4: Exporting Data

##Exporting the cleaned data
write.csv(df, "clean_df.csv")
