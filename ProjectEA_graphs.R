library(readr)
library(dplyr)
library(ggplot2)
library(tidyverse)


data <- read_csv("DAProject1.csv")



<<<<<<< Updated upstream
=======








>>>>>>> Stashed changes
obesity_by_time <- data |>
  group_by(Year)|>
  summarise(Obesity_Prevalence = mean(Obese=="Yes") *100 )

ggplot(obesity_by_time, aes(x=Year, y=Obesity_Prevalence))+
<<<<<<< Updated upstream
  geom_line()
=======
  geom_line()+
  labs(title = "Prevalence of of obisity by year", x="Year", y="percentage of obesity")









>>>>>>> Stashed changes


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





<<<<<<< Updated upstream
=======












# Load the dataset
data <- read.csv("DAProject1.csv")





# Ensure 'Obese' is a factor
data$Obese <- as.factor(data$Obese)

# Calculate the prevalence of obesity for each year
library(dplyr)
obesity_prevalence_by_year <- data %>%
  group_by(Year) %>%
  summarise(Obesity_Percentage = mean(Obese == "Yes") * 100)

library(ggplot2)

# Plotting
ggplot(obesity_prevalence_by_year, aes(x=Year, y=Obesity_Percentage)) +
  geom_bar(stat="identity", fill="skyblue") +
  theme_minimal() +
  labs(title="Obesity Prevalence in Scotland (2008-2012)",
       x="Year",
       y="Percentage of Population Classified as Obese (%)") +
  scale_x_continuous(breaks = obesity_prevalence_by_year$Year) # Ensure X-axis has the correct years



obesity_by_sex <- data %>%
  group_by(Sex) %>%
  summarise(Obesity_Percentage = mean(Obese == "Yes") * 100)
print(obesity_by_sex)


data$Age_Group <- cut(data$Age, breaks=c(0, 18, 30, 40, 50, 60, Inf), labels=c("0-18", "19-30", "31-40", "41-50", "51-60", "60+"))

obesity_by_age_group <- data %>%
  group_by(Age_Group) %>%
  summarise(Obesity_Percentage = mean(Obese == "Yes") * 100)
print(obesity_by_age_group)

obesity_by_education <- data %>%
  group_by(Education) %>%
  summarise(Obesity_Percentage = mean(Obese == "Yes") * 100)
print(obesity_by_education)

obesity_by_veg <- data %>%
  group_by(Veg) %>%
  summarise(Obesity_Percentage = mean(Obese == "Yes") * 100)
print(obesity_by_veg)


obesity_by_fruit <- data %>%
  group_by(Fruit) %>%
  summarise(Obesity_Percentage = mean(Obese == "Yes") * 100)
print(obesity_by_fruit)



# Ensure that 'Obese', 'Sex', 'Education', 'Veg', and 'Fruit' are factors, as they are categorical variables
data$Obese <- as.factor(data$Obese)
data$Sex <- as.factor(data$Sex)
data$Education <- as.factor(data$Education)
data$Veg <- as.factor(data$Veg)
data$Fruit <- as.factor(data$Fruit)

# Fit logistic regression model
obesity_model <- glm(Obese ~ Year + Age + Sex + Education + Veg + Fruit, 
                     data = data, 
                     family = "binomial")

# Display the summary of the model
summary(obesity_model)



















>>>>>>> Stashed changes
