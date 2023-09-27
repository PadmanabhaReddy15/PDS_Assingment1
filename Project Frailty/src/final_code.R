library(readr)

#Reading Data
input_data <- read.csv("Project Frailty/data_raw/raw_yield_data.csv")

input_data <- na.omit(input_data)

#Cleaning Data
input_data$Frailty <- ifelse(input_data$Frailty == "Y", 1, 0)


write.csv(input_data, "C:\\Users\\padma\\Documents\\Project Frailty\\clean_data\\clean_yield_data.csv")

clean_data <- read.csv("Project Frailty/clean_data/clean_yield_data.csv")


#Analysis
lm.fit <- lm(Frailty ~ Grip..strength + Weight, data=clean_data)
plot(lm.fit)
summary(lm.fit)

result_text <- capture.output(print(summary(lm.fit)))
writeLines(result_text, "C:\\Users\\padma\\Documents\\Project Frailty\\Result\\result.txt")

#According to general observational statistics from graph, women who have weak grips are likely to be fragile.
# Additionally, if the weight is greater than the average weight value.