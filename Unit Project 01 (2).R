# Unit Project 01
# BIOL 101
# January 2026
# Zeerak Malik

#### Lecture 01

# Q1 Compute the following and store the result in an object called x:
#(5+3)^2/4

x <- (5+3)^2/4
x

# Q2 Create an object called “gen_time” equal to 3. Then create a second object called years equal to gen_time * 1000

gen_time <- 3
gen_time
years <- gen_time * 1000
years

# Q3 Use the sqrt() function to compute the square root of years

sqrt(years)

# Q4 Take the log (base 10) of the absolute value of -25.

log10(abs(-25))

# Q5 Create a vector called “sites” that contains the numbers 1 to 100.

sites <- seq(1,100)
sites

# Q6 Create a vector called “temps” that includes the numbers from 0 to 40, increasing in steps of 2.

temps <- seq(0,40, by=2)
temps

#Q7 How many values are in temps (i.e. what is the length of the vector)?
#Store the answer in an object called “n_temps”.

#21 values including 0
n_temps <- 21

#Q8 Create a vector called “treatments” that repeats “control” and “treated” 5 times each.

treatments <- rep(c("control", "treated"), each=5)
treatments

#Q9 Wrap up and reflection
# What part of this lesson was most confusing or frustrating? 
# The looping and connecting together it's hard to visualize which is which
# Where do you think things like the sequences we generated using “seq()” might show up in real biological data? 
#When you want to know how many of certain things they are and the functions like
# rep() and each makes that easier to see in data how much of which is in the data.


#### Lecture 02

# Q1 SWIRL Lesson 4
#Create a numeric vector called pop_size containing the following values: 120, 135, 150, 160, 175 What is the length (number of values) in pop_size? Use an R function to determine this and show your code.
pop_size <- c(120, 135, 150, 160, 175)
pop_size
length(pop_size)

#Q2 Create a character vector called species containing the following values: “stickleback”, “guppy”, “zebra_fish” (include the quotes!) Use the class() function to check the class of the species and pop_size vectors.
species <- c("stickleback","guppy","zebra_fish")
species
class(species)
class(pop_size)

#Q3 Multiply every value in pop_size by 2 and store the result as double_pop. Print the length and contents (all the values) of double_pop to the console.
#EACH VALUE SHOULD BE MULTIPLIED BY 2
double_pop <- pop_size * 2
length(double_pop)
double_pop

#Q4 Subtract 100 from each element of pop_size. What happens if you subtract a single number from a vector?
print(pop_size - 100)
#every number also gets subracted from 100

#Q5 What happens if you try to combine numbers and characters in the same vector using c()? Try creating a vector with the values:
# 10,5, “stickleback”, 2
random <- c(10,5,"stickleback",2)
random
#It just combines the numeric and characters together (the ones with big spaces in between).

#Q6 SWIRL Lesson 5
#Create a numeric vector called depth with values: 1, 2, 7, NA, 8 NA What is the length of depth?
depth <- c(1,2,7,NA,8,NA)
length (depth) #6

#Q7 Use is.na() to identify which values are missing in depth. Store the result in a new vector called depth_miss.
#What class of vector is depth_miss?
depth_miss <- is.na(depth)
class(depth_miss) #class is logical
print(depth_miss)

# Q8 How many missing values are in depth? Use code to determine this. Hint: logical vectors can be summed with sum().
sum(depth_miss) # 2 missing values in depth, which are the NA.

#Q9 SWIRL Lesson 6: Subsetting Vectors
#Create a vector called fitness with the following values: 0.95, 0.87, NA, 0.92, 0.78, 0.99. Extract the first three values of fitness using indexing (square brackets).
fitness <- c(0.95, 0.87, NA, 0.92, 0.78, 0.99)
fitness[1:3]

#Q10 Extract all values of fitness greater than 0.9.
fitness[fitness>0.9] #Keeps NA
fitness[!is.na(fitness)&fitness>0.9]

#Q11 Extract all values of fitness that are not missing (NA)
fitness[!is.na(fitness)]

# Q12 What was the most interesting new thing you learned in this lesson? What was the most confusing part of the lesson?
#The subsetting vector in swirl was very confusing at first, you have to loop them in each other and manipulate the vectors, which takes practice for me.
#Most interesting part I learned was the c() feature since it applies to almost any of these problems and is a important skil to know and use.

#### Lecture 03

#SWIRL Lesson 7 : Matrices and Data Frames

# Q1
#Create a matrix named m containing the numbers 1 through 12 with 4 rows and 3 columns, filled by column (the default).
m <- matrix(data = 1:12, nrow = 4,ncol= 3, byrow = FALSE, dimnames = NULL)
print(m)

#Q2
#Using m from Q1, use an R function to find the dimensions (rows and columns) of your matrix.
#Next, try the functions nrow() and ncol() with your matrix as input. What do these functions do?
dim(m)
nrow(m)
ncol(m)
#Shows dimensions on dim() function, and rows and columns for nrow and ncol respectively

#Q3
#Extract the value in the 4th row, 2nd column. Next, extract the entire 3rd column.
m[4,2]
m[,3]

#Q4
#Multiply your matrix m by 2, and show the result.
m*2
#multiplies every number by 2

#PART 2 DATA FRAMES

#Q5
#Create a data frame called fish using the following vectors as input:
#id <- c("F1","F2","F3","F4","F5") length_mm <- c(55, 61, 58, 72, 60) lake <- c("Bear","Bear","Arrowhead","Bear","Arrowhead") parasite <- c(TRUE, FALSE, TRUE, FALSE, FALSE)
#Hint: you’ll need to use the data.frame() function!
id <- c("F1", "F2", "F3","F4", "F5")
length_mm <- c(55, 61, 58, 72, 60)
lake <- c("Bear","Bear","Arrowhead","Bear","Arrowhead")
parasite <- c(TRUE, FALSE, TRUE, FALSE, FALSE)
fish <- data.frame(id, length_mm, lake, parasite)
fish

#Q6
#Use the names() function to print a list of the column names of your data frame.
#Next, using those names, the $ operator, and the class() function, check the class of each column.
names(fish)
class(fish$id)
class(fish$length_mm)
class(fish$lake)
class(fish$parasite)

#Q7
#Use the function str() to check the “structure” of your data frame. What does this function do?
str(fish)
#Analyzes the matrix and tells you variables and objects in it

#Q8
#The function cbind() allows you to combine two data frames together, side by side.
#Create a new data frame called fertility with a single column named eggs with the values: 10,20,5,50,2
#use cbind() to add this data to your “fish” data frame.

eggs <- c(10,20,5,50,2)
fertility <- data.frame(eggs)
cbind(fish,fertility)
combined <- cbind(fish,fertility) #if you want both data at the same time print combined

#SWIRL Lesson 8 Logic

#Q9 Define a vector eggs with the following values: 0, 0, 1, 3, 0, 2. Write a logical expression that checks if each value of eggs is greater than or equal to one, and less than 3.
eggs <- c(0, 0, 1, 3, 0, 2)
eggs >= 1 & eggs < 3

#Q10 Define a vector hatched_offspring with the following values: 0, 0, 0, 2, 0, 2. Write a logical expression that checks if each value of eggs is equal to each corresponding value of “hatched_offspring”
hatched_offspring <- c(0,0,0,2,0,2)
hatched_offspring == eggs

#Q11 Use a logical expression to extract the elements of the eggs vector that are not zeroes.Note: you will need to index the eggs vector with square brackets, and a logical vector!
eggs[eggs != 0]

#Q12 Use a logical expression to extract the elements of the eggs vector that are exactly equal to zero or equal to 2.
#Note: you will need to index the eggs vector with square brackets, and a logical vector!
eggs[eggs != 0 & eggs != 2]

#Q13 There is a special operator called %in% that is very useful. Using your eggs vector, try evaluating each of the following %in% statements, and write what you think this operator does.
#0 %in% eggs
#1 %in% eggs
#2 %in% eggs
#4 %in% eggs
#50 %in% eggs
0 %in% eggs
1 %in% eggs
2 %in% eggs
4 %in% eggs
50 %in% eggs
#checks whether the value is in the list True if it is FALSE if not.


#### Lecture 04

#IF/FOR LOOPS - LECTURE 4
#Q1 Imagine you are a wildlife manager tracking whether a fish is “large enough” to tag. Assign a vector length_mm <- 52.Write an if statement that prints:
# “Tag this fish” if length_mm >= 50
#“Too small to tag” otherwise.
#Then change length_mm to 49 and run it again!

length_mm <- 52
if (length_mm >=50) {
  print("Tag this fish")
} else {
  print("Too small to tag")
}
length_mm <- 49
if (length_mm >=50) {
  print("Tag this fish")
} else {
  print("Too small to tag")
}

#Q2 Imagine you are classifying relative gene expression (ranging between 0 and 6) of a gene in cancerous cells.
#Assign a vector expression <- 4
#Write an if / else if / else chain that prints:
# “Extreme” if expression >= 6
#“Abnormal” if expression >= 4
#“Elevated” if expression >= 2
#“Baseline” otherwise
#Change the value of expression to 1, and rerun the if statement. What is the result?

expression <- 1
if (expression >= 6) {
  print("Extreme")
}else if (expression >=4 ) {
  print("Abnormal")
}else if (expression >= 2) {
  print("Elevated")
} else{
  print("Baseline")
}
#4 was Abnormal, 1 was Baseline


#PART 2 FUNCTIONS
#Q1 Write a function called double that takes a single value n as input and returns the value of n*2


double <- function(n) {
  return(n * 2)
}
double(6) #Gives you 12
#Q2 Write a function add_tax that computes the final price of a item after a percentage of tax is added (i.e. price + price x tax). Name the two inputs of this function price and tax.
#Show the results of your function for the following settings for arguments:

add_tax <- function(price, tax) {
  final_price <- price + price * tax
  return(final_price)
}
add_tax(100, 0.15)
add_tax(82, 0.10)
add_tax(tax=0.10, price=82)

#Q3 Convert your if statement from Question 2 above to a function called classify_expression(expression).
#Show the output of this new function with the following settings:

classify_expression <- function(expression) {
  if (expression >= 6) {
    return("Extreme")
  } else if (expression >= 4) {
    return("Abnormal")
  } else if (expression >= 2) {
    return("Elevated")
  } else {
    return("Baseline")
  }
}
classify_expression(6)
classify_expression(4)
classify_expression(2)
# PART 3 FOR LOOPS
#Q1 Write a for loop that prints the numbers 1 to 10.
for (i in 1:10) {
  print(i)
}
#Q2 Imagine you have performed some genome sequencing and want to keep a running total of the number of sequencing reads from your experiment.
#Define a vector: reads <- c(120, 80, 150, 60, 200, 90)
#Write a for loop that adds each of these values to a running total variable called cumulative_reads.
#Hint: each time the loop runs, you should update the running total like so: cumulative_reads <- cumulative_reads + i
#After running the loop, print the value of cumulative_reads

reads <- c(120, 80, 150, 60, 200, 90)
cumulative_reads <- 0 

for (i in reads) {
  cumulative_reads <- cumulative_reads + i
}
print(cumulative_reads)

#Q8 You are once again classifying fish as large enough to tag, 
#but this time you have multiple length measurements. Define the following vector:

length_mm <- c(35, 52, 47, 61, 49)
tag_status <- character(length(length_mm))
for (i in 1:length(length_mm)) {
  if (length_mm[i] >= 50) {
    tag_status[i] <- "TAG"
  } else {
    tag_status[i] <- "NO TAG" 
  }
}
tag_status
#### Lecture 05

install.packages("tidyverse")
install.packages("palmerpenguins")
library("dplyr")
library("palmerpenguins")

str(penguins) #shows variables
#Q1 Use select() to create a subset of penguins that includes only:
#species
#sex
#body_mass_g
#Assign this to a new data frame called “penguins_sub”


penguins_sub <- penguins %>%
  select("species", "sex", "body_mass_g")
print(penguins_sub)

#Q2 Select only the measurement variables: Then pipe to head() at the end to only show the first 6 rows

penguins %>%
  select("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")
head(penguins)

#Q3 Filter penguins to keep only observations from Gentoo penguins.
#How many rows does your new data frame have? (Hint: run nrow() on the result or just look at the )

Gentoo <- penguins %>%
  filter(species == "Gentoo")
nrow(Gentoo)
#There are 124 gentoo penguins

#Q4 Filter to keep only penguins with body_mass_g greater than 5000 g.
#Do you see any NA values in body_mass_g still?
penguins %>%
  filter(body_mass_g > 5000)
#No NA values seen

#Q5 Filter to keep only rows where sex is not missing.
#Why might missing values matter for later calculations?

penguins %>%
  filter(!is.na(sex))
#the data would be incomplete for analyzing with other variables, which makes results skewed and maybe wrong.

#Q6 Create a new column body_mass_kg by converting body_mass_g to kilograms.
penguins %>%
  mutate(body_mass_kg = body_mass_g/1000) 
str(penguins)

#Q7 Make a filtered dataset of only Adelie penguins, then add a new column:
#bill_area = bill_length_mm * bill_depth_mm
#Does this “bill_area” have units? What would the units be?
penguins %>%
  filter(species == "Adelie") %>%
  mutate(bill_area = bill_length_mm * bill_depth_mm)
#it would be mm^2 since 2 mm are multiplied

#Q8 Group penguins by species and then summarize to count how many penguins are in each species.
#(Hint: counting observations in groups uses n())
#Which species has the most observations?
penguins %>%
  group_by(species) %>%
  summarize(count = n())
#Adelie has the most with 152

#Q9 Group by island and compute the average (mean) flipper length.
#You should include na.rm = TRUE inside mean().
#Which island has the largest average flipper length?
penguins %>%
  group_by(island) %>%
  summarize(avg_flipper = mean(flipper_length_mm, na.rm = TRUE))
#Biscoe is the island with the largest average flipper

#Q10 Group by BOTH species and sex, then compute the mean body mass.
#Why might male vs female body mass differ?
penguins %>%
  group_by(species, sex) %>%
  summarize(mean_body_mass = mean(body_mass_g, na.rm = TRUE))
#males tend to be heavier then the females maybe because of survival needs and how they need to protect their families.

#Q11 Filter penguins to remove cases where sex and/or species are missing. Group by species, island, and sex. For the body mass variable, compute the mean, standard deviation (sd), and count (n()) of observations.
penguins %>%
  filter(!is.na(species) & !is.na(sex)) %>%
  group_by(species, island, sex) %>%
  summarize (mean_body_mass = mean(body_mass_g, na.rm = TRUE)) %>%
  sd_body_mass = sd(body_mass_g, na.rm = TRUE)  %>%
  count (n())

#Reflection Q's
#1 -> What’s the difference between select() and filter()?
#select() does columns, filter() chooses conditions on rows.
#2 -> When should you use mutate()?
#When you need/want to make a new column
#3 -> Why do group_by() and summarize() almost always go together?
#group.by() doesn't do anything visibly, it just splits data, summarize helps focus and executes the data
#4 -> What does na.rm = TRUE do, and why is it useful?
#Gets rid of NA data and makes the data more valid to interpret without misunderstanding or skewing the data.
