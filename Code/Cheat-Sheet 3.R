Cheat-Sheet 3 Chapter 7

#Data transformation 


library(nycflights13)

library(tidyverse)

###Data types

int #integers.

dbl #doubles, or real numbers.

chr #character vectors, or strings.

dttm #date-times (a date + a time).

lgl #logical, vectors that contain only TRUE or FALSE.

fctr #factors, which R uses to represent categorical variables with fixed possible values.

date #dates



###Functions

filter(flights, month == 1, day == 1) #subsetting data

is.na() #checking for missing values

arrange(flights, year, month, day) #changes order of columns

select(flights, year, month, day) #select specific columns

    starts_with("abc"): #matches names that begin with "abc".

    ends_with("xyz"): #matches names that end with "xyz".

    contains("ijk"): #matches names that contain "ijk".

    matches("(.)\\1"): #selects variables that match a regular expression. This one matches any variables that contain repeated characters. You'll learn more about regular expressions in strings.

    num_range("x", 1:3): #matches x1, x2 and x3
      
rename(flights, tail_num = tailnum) #used to rename variables

mutate() #adding a new column

summarise() #summarises a dataframe




