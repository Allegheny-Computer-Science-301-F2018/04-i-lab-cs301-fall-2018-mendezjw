# Name: Jonathan Mendez
# Date: 10/12/18

# Run the below only if the library is not already installed.
# install.packages(dslabs)

library(dslabs)
library(dplyr)
library(tidyverse)
data(us_contagious_diseases)

#Question 1.

us_contagious_diseases %>%
filter(disease == "Measles" & state != "Hawaii" & state != "Alaska") %>%
mutate(dat = (count * 100000) / population * (weeks_reporting / 52))

#Question 2.

ggplot(us_contagious_diseases, aes(x = year, y = count))
measles_per_year_cali <- ggplot(us_contagious_diseases, aes(x = year, y = count))
plot(measles_per_year_cali)
measles_per_year_cali +
geom_point() +
geom_vline(xintercept = 2018)

#Question 3.

ggplot(data = dat_caliFocus) + geom_bar(mapping = aes(x = state,
     y = , fill = yearBlock), position = "dodge",
     stat = "identity") + theme(axis.text.x = element_text(angle = 90,
     hjust = 1, vjust=-0.01))

#Question 4.

#Question 5.

#Question 6.
