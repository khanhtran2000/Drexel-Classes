# clear environment
rm(list = ls())

# change argument of function setwd to point to the folder you wish to save the data to
# --- complete/edit the line of code below ---
setwd("C:/Users/macbook/Desktop/INFO 332/Assignment 1")


# here's the url address of the covid-19 dataset
url <- "https://covid.ourworldindata.org/data/owid-covid-data.csv"


# Q1
# use function download.file to download the dataset from the url defined above to your machine 
# note: the file will be downloaded to the working directory defined previously by setwd
# --- complete/edit the line of code below ---
download.file(url, basename(url))


# Q2
# use function read.csv to load the dataset into R
# --- complete/edit the line of code below ---
df_covid <- read.csv(basename(url))


# Q3
# use function str to inspect dataset
# --- complete/edit the line of code below ---
str(df_covid)


# Q4
# find the total cases in the united states as of 2020-07-01 and assign the result to variable usa_total_cases
# --- complete/edit the line of code below ---
usa_total_cases <- df_covid[df_covid$date=="2020-07-01" & 
                            df_covid$location=='United States',]$total_cases
print(usa_total_cases) # this's for displaying the result to console--do not change


# Q5
# find the total deaths in Italy as of 2020-07-01 and assign the result to variable italy_total_deaths
# --- complete/edit the line of code below ---
italy_total_deaths <- df_covid[df_covid$date=='2020-07-01' &
                               df_covid$location=='Italy',]$total_deaths
print(italy_total_deaths)

# Q6
# find the total tests in canada as of 2020-07-01 and assign the result to variable canada_total_tests
# --- complete/edit the line of code below ---
canada_total_tests <- df_covid[df_covid$date=='2020-07-01' &
                               df_covid$location=='Canada',]$total_tests
print(canada_total_tests)

# Q7
# create a subset of the covid dataset with data only for "2020-07-01" and assign the result to variabe covid_july
# --- complete/edit the line of code below ---
covid_july <- df_covid[df_covid$date=='2020-07-01',]
str(covid_july)


# Q8
# remove the row that corresponds to location = "World" from covid_july and assign the result to variable covid_july_filtered 
# --- complete/edit the line of code below ---
covid_july_filtered <- covid_july[covid_july$location!="World",]
str(covid_july)
str(covid_july_filtered)

# Q9
# from covid_july_filtered, create a subset that contains all countries with total cases less than 10  and only 1 column: the location; assign the result to variable low_infections
low_infections <- covid_july_filtered[covid_july_filtered$total_cases<10,]['location']
print(low_infections)


# Q10
# from covid_july_filtered, create a subset that contains the top 10 countries by total deaths and only 2 columns: location and total deaths; assign the result to variable top_10_by_deaths 
# --- complete/edit the line of code below ---
top_10_by_deaths <- covid_july_filtered[order(-covid_july_filtered$total_deaths),][1:10,c("location","total_deaths")]
print(top_10_by_deaths)


# Q11
# from covid_july_filtered, create a subset that contains the top 10 countries by death rate and only 3 columns: location, total death rate, and total deaths; assign the result to variable top_10_by_death_rate # --- complete/change the line of code below ---
# --- complete/edit the line of code below ---
death_rate <- covid_july_filtered$total_deaths/covid_july_filtered$total_cases
top_10_by_death_rate <- covid_july_filtered[order(-death_rate),][1:10,c("location","total_deaths")]
top_10_by_death_rate$total_death_rate <- -sort(-death_rate)[1:10]
print(top_10_by_death_rate)



# 12 
# Say you're interested in investigating countries with highest covid death rates. 
# How would change the criteria for selecting top 10 countries by death rate to improve on the 
# results shown in the previous question? Hint: do you think some countries should not belong in the top 10 list?
# Provide your answer in the form of a comment in the space below:
#
# If we look at the death rate only, we have neglected the importance of total cases and the total deaths. In the
# top_10_by_death_rate dataframe, we can notice that there are a few countries in the list that have a very small 
# number of cases of death such as "Sint Maarten (Dutch part)" and "British Virgin Islands". This is due to the fact
# that these countries also have a small number of total cases, hence make the total_death_rate high. An extra criteria 
# that can help is to define a minimal value for total_cases or total_deaths before calculating the death rate. For 
# example, if we only take countries with over 100,000 of total_cases, we can have a more reasonale list. Even though
# the death rates of these countries are not as high as the original list, the new top 10 will provide a better 
# representation of "top" countries in a more serious situation than "Sint Maarten (Dutch part)" or "British Virgin
# Islands". 