#Step 1

titanic_original$embarked[titanic_original$embarked == ""] <- "S"

#Step 2

titanic_original$age[titanic_original$age == "NA"] <- mean(titanic_original$age[which(!is.na(titanic_original$age))])


#Step 3

titanic_original$boat[titanic_original$boat == ""] <- NA


#Step 4

titanic_original$has_cabin_number <- ifelse(titanic_original$cabin =="", 0, 1)

  