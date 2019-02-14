Cheat-Sheet 1 Week 5

#Data Import


library(tidyverse) #Attaching a package


dealersatisfaction <- read_csv("Data/Dealer Satisfaction.csv") #Uploading Data set

dealersatisfaction2 <- read_csv("Data/Dealer Satisfaction.csv", skip =2) #Skipping 1st Row

dealersatisfaction3 <- read_csv("Data/Dealer Satisfaction.csv", col_name= c("a")) #Renaming column names or use col_names = FALSE to not treat a first row as headings



## Options to 'translate'/'parse' a vector: 

str(parse_logical(c("TRUE", "FALSE", "NA")))

str(parse_integer(c("1", "2", "3"), na = ".")) #Specify a missing value

str(parse_date(c("2010-01-01", "1979-10-14")))



parse_number("$100")
[1] 100


x1 <- "El Ni\xf1o was particularly bad this year"
parse_character(x1, locale = locale(encoding = "Latin1"))
[1] "El Niño was particularly bad this year"

guess_encoding(charToRaw(x1)) #a function to figure out type of coding



### Date and Time Parsing

parse_datetime("20180418")
[1] "2018-04-18 UTC"

parse_time("03:47 pm")
15:47:00


#### Symbols

Year
%Y (4 digits).
%y (2 digits); 00-69 -> 2000-2069, 70-99 -> 1970-1999.

Month
%m (2 digits).
%b (abbreviated name, like "Jan").
%B (full name, "January").

Day
%d (2 digits).
%e (optional leading space).

Time
%H 0-23 hour.
%I 0-12, must be used with %p.
%p AM/PM indicator.
%M minutes.
%S integer seconds.
%OS real seconds.
%Z Time zone (as name, e.g. America/Chicago). Beware of abbreviations: if you're American, note that "EST" is a Canadian time zone that does not have daylight savings time. It is not Eastern Standard Time! We'll come back to this time zones.
%z (as offset from UTC, e.g. +0800).

Non-digits
%. skips one non-digit character.
%* skips any number of non-digits.
