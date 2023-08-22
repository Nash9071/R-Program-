install.packages("ggplot2")
install.packages("dplyr")
install.packages("ISLR")
install.packages("forcats")
install.packages("hrbrthemes")


#IMPORT THE DATASET
data<-read.csv("C:/Users/Nishitha/Downloads/Sleep_health_and_lifestyle_dataset.csv")
print(data)

#HEAD 
head(data)

#STR
Str(data)

#DISPLAYING THE ROW AND COLUMNS

dim(data)

#FINDING NULL VALUES 

sapply(data,function(x) sum(is.na(x)))

#SUMMARY OF DATASET

summary(data)


#Visualize of a dataset

ggplot(data, aes(x=Stress.Level)) +
  geom_histogram(fill="pink", color="blue",bins=6) +
  ggtitle("Histogram of Stress.Level")

#BAR GARPH
data %>%
  ggplot( aes(x=Occupation, y=Stress.Level)) +
  geom_bar(stat="identity", fill="blue", alpha=.8, width=.7) +
  coord_flip() +
  xlab("") +
  theme_bw()

#GEOM POINT
ggplot(data = data, mapping = aes(x =Age, y = Stress.Level)) +
  geom_point() +
  geom_smooth(aes(color = Occupation)) +
  facet_wrap( ~ Occupation)

#MAPING
plot(data, aes(x=Sleep.Duration, group=Occupation,, fill=Occupation,)) +
  geom_density(adjust=1.5) +
  theme_ipsum() +
  facet_wrap(~Occupation,) +
  theme(
    legend.position="none",
    panel.spacing = unit(0.1, "lines"),
  )











