Cheat-Sheet 2 Chapter 6 

#Matrices and Dataframes

### Functions to create matrices and dataframes

cbind(a, b, c) #Combine vectors as columns in a matrix

rbind(a, b, c) #Combine vectors as rows in a matrix

matrix(x, nrow, ncol, byrow) #Create a matrix from a vector x

data.frame() #Create a dataframe from named columns, adding stringsAsFactors = FALSE helps keeping all values


### Matrix and dataframe functions

head(x), tail(x) #Print the first few rows (or last few rows)

View(x) #Open the entire object in a new window

nrow(x), ncol(x), dim(x)	#Count the number of rows and columns

rownames(), colnames(), names()	#Show the row (or column) names

str(x), summary(x)	#Show the structure of the dataframe (ie., dimensions and classes) and summary statistics


#### Dataframe Names

names() #Returns names of the dataframe

df$name #gives specific column within a datafram

df[c("name1","name2")] #gives specific columnS within a dataframe

df$newcolumn <- c("a", "b") #adding a new column to a dataframe

names(df)[1] <- "a" #changing name of 1st column of df to "a"


#### Slicing dataframes

df[1, ]  #Return row 1

df[, 5]  #Return column 5

df[1:5, 2] #Return rows 1:5 and column 2

subset()
  x #A Dataframe
  subset = #a logical vector indicating the rows to keep
  select = #the columns to keep

