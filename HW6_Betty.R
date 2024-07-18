library(dplyr)
library(tidyr)
df<-read.csv("C:\\Users\\betty\\Downloads\\data.csv")
print(df)
## Question 2. Exoloring Data: 
summary(df)
##Question3. Basic Operations with DataFrame:
age_column<- df$Age
print(age_column)
##Question4. Filtering a DataFrame:
filtered_df<- subset(df, Age >= 25)
print(filtered_df)
##Question5. Generate Statistical Indicators:
mean_income<- mean(df$Income)
print(mean_income)
##Question6. Descriptive Statistics with the psych Package:
library(psych)
describe(df$HoursWorkedPerWeek)
##Q7.Determining the Skewness and Kurtosis:
library(e1071)
skew<- skewness(df$Weight_kg)
hurt<- kurtosis(df$Weight_kg)
print(skew)
print(hurt)
##Q.8 Data Transformation:
df$LogIncome <- log(df$Income)
print(df)
##Q9. Recording Continuous Variables
breaks <- c(0, 3, 7, 10)
labels <- c("Low", "Medium", "high")
df$JobSatisfaction_Category <- cut(df$JobSatisfaction, breaks = breaks, labels = labels, include.lowest = TRUE)
print(df)
##Q10. Sorting Data Frames
sorted_df<-df[order(-df$Age), ]
print(sorted_df)
##Q11. Using filter()
library(dplyr)
filtered_df <- filter(df, HoursWorkedPerWeek > 40, Country == "USA")
print(filtered_df)
##Q12. Using arrange()
arranged_df<- arrange(df, Income)
print(arranged_df)
##Q13. pick variables by their Names()
selected_df <- select(df, ID, Age, Gender)
print(selected_df)
##Q14. Create New Variables with Existing Variables
df <-mutate(df, BMI = Weight_kg / (Height_m^2))
##Q15. Label Encoding
df$Gender <- ifelse(df$Gender == "Female", 0, 1)
print(df$Gender)

