 library(readr)
> StudentsPerformance <- read_csv("student performance/raw data/StudentsPerformance.csv")

> View(StudentsPerformance)

> write.csv(StudentsPerformance, "C:\\Users\\padma\\Documents\\Project Frailty\\clean_data\\clean_data.csv")

> Clean_data <- read_csv("student performance/clean data/Clean_data.csv")

> View(Clean_data)
> install.packages("ggplot")

> colnames(Clean_data)
[1] "gender"                      "race/ethnicity"              "parental level of education"
[4] "lunch"                       "test preparation course"     "math score"                 
[7] "reading score"               "writing score"              
> Namesofcol <- c("gender","Race", "plevel_education","lunch","tpreparation_course","Math_score","Reading_score","Writing_score")
> colnames(Clean_data) <- Namesofcol
> table(Clean_data)

#comparing reading_score and gender
> ggplot(Clean_data,aes(Reading_score)) + geom_histogram(binwidth=5, color="black", aes(fill=gender))

#comparing math_score and race
> ggplot(Clean_data,aes(Math_score)) + geom_histogram(binwidth=5, color="yellow", aes(fill=Race))
#comparing writing_score and gender
> ggplot(Clean_data,aes(Writing_score)) + geom_histogram(binwidth=5, color="gray", aes(fill=gender))

#comparing gender and test_preparation_course
> ggplot(Clean_data,aes(x=gender , fill = tpreparation_course)) + geom_bar(position = "stack")
> 
#comparing math_score and lunch
> ggplot(Clean_data,aes(Math_score)) + geom_histogram(binwidth=5, color="white", aes(fill=lunch)