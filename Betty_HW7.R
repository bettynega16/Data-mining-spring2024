###### week 7- lab: Stat- Statvis - Regression 


####### Correlation 

df <-read.csv("C:\\Users\\betty\\Downloads\\house_price.csv")
head(df)

# Questions 1 
install.packages("farver")
library(farver)
library(ggplot2)
head(df) 

p<-ggplot(data=df, aes(x=Size_sqm, y=price)) 
p+geom_point(color='Red')+theme_bw()

p+geom_point(aes(colour=Location), size=0.4)

#Question 2

another<-ggplot(data=df, aes(x=Age_years, y=price))

#Question 3

scatter_size_price <- ggplot(data = df, aes(x = Size_sqm, y = Price)) +
  geom_point(aes(color = Location), size = 5) +  
  labs(title = "Scatter Plot of Size_sqm versus Price",
       x = "Size (square meters)",
       y = "Price (USD)") +
  theme_minimal() +  
  theme(
    plot.title = element_text(hjust = 0.5), 
    axis.title = element_text(size = 12),  
    axis.text = element_text(size = 10),  
    legend.position = "rihttp://127.0.0.1:18929/graphics/602c1883-543d-407b-8653-067bdb3368f6.pngght", 
    legend.text = element_text(size = 10) 
  )


#Question 5

unique(df$Age_years)
unique (df$Price)

unique(df$Location)
area<-c("Rural", "Suburban", "Urban")
price_thing<-c(100000,300000,900000)
barplot(price_thing,names=area, main='Average',
        xlab="A", ylab="B", col=c("pink","purple","blue"),
        border="darkgreen", space=0.5)

#Question 6

library(ggplot2)

ggplot(df, aes(x = Size_sqm)) +
  geom_histogram(aes(y = ..density..), bins = 30, alpha = 0.5, fill="blue") +
  geom_density(color = "red") +
  labs(title = "Histogram with Density Plot",
       x = "Size_sqm",
       y = "Density")
#Question 8
ggplot(data=mpg)+geom_point(aes(x=displ,y=hwy, color=class))+face_warp(~class)
library(ggplot2)
ggplot(df, aes(x = Size_sqm, y = Price)) +
  geom_point() +
  facet_wrap(Rural)


