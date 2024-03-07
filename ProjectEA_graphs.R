library(readr)
library(dplyr)
library(ggplot2)
library(tidyverse)


data <- read_csv("DAProject1.csv")


obesity_by_time <- data |>
  group_by(Year)|>
  summarise(Obesity_Prevalence = mean(Obese=="Yes") *100 )

ggplot(obesity_by_time, aes(x=Year, y=Obesity_Prevalence))+
  geom_line()


obesity_by_sex <- data |>
  group_by(Sex) |>
  summarise(Obesity_Prevalence = mean(Obese == "Yes") * 100)

obesity_by_education <- data |>
  group_by(Education) |>
  summarise(Obesity_Prevalence = mean(Obese == "Yes") * 100)

obesity_by_veg <- data |>
  group_by(Veg) |>
  summarise(Obesity_Prevalence = mean(Obese == "Yes") * 100)

obesity_by_fruit <- data |>
  group_by(Fruit) |>
  summarise(Obesity_Prevalence = mean(Obese == "Yes") * 100)






ggplot(data = obesity_by_sex, aes(x = Sex, y = Obesity_Prevalence, fill = Sex)) +
  geom_bar(stat = "identity") +
  labs(title = "Obesity Prevalence by Gender",
       x = "Gender",
       y = "Obesity Prevalence (%)") +
  theme_minimal()

ggplot(data = obesity_by_education, aes(x = Education, y = Obesity_Prevalence, fill = Education)) +
  geom_bar(stat = "identity") +
  labs(title = "Obesity Prevalence by Education",
       x = "Education",
       y = "Obesity Prevalence (%)") +
  theme_minimal()

ggplot(data = obesity_by_veg, aes(x = Veg, y = Obesity_Prevalence, fill = Veg)) +
  geom_bar(stat = "identity") +
  labs(title = "Obesity Prevalence by Vegetable Consumption",
       x = "Vegetable Consumption",
       y = "Obesity Prevalence (%)") +
  theme_minimal()

ggplot(data = obesity_by_fruit, aes(x = Fruit, y = Obesity_Prevalence, fill = Fruit)) +
  geom_bar(stat = "identity") +
  labs(title = "Obesity Prevalence by Fruit Consumption",
       x = "Fruit Consumption",
       y = "Obesity Prevalence (%)") +
  theme_minimal()








ggplot(data, aes(x = Age, fill = Obese)) +
  geom_histogram(binwidth = 5) +
  labs(title = "Distribution of Obesity by Age",
       x = "Age",
       y = "Count") +
  theme_minimal()


ggplot(data, aes(x = Year, fill = Obese)) +
  geom_bar() +
  labs(title = "Distribution of Obesity Over the Years",
       x = "Year",
       y = "Count") +
  theme_minimal()





