
data <- read.csv("C:/Users/jdanehower/Desktop/training_filev1.csv", header = TRUE)

cor (data$Females_CEN_2010, data$Females_ACS_06_10)

savehistory(file="myfile")

history(max.show=Inf)

save(x, file= "Census1.RDATA")

data$Percent_Population_in_Urbanized_Area_Census <- data[,11] / data[,14]
data$Percent_Population_in_Urban_Cluster_Census <- data[,12] / data[,14]
data$Percent_Population_in_Rural_Area_Census <- data[,13] / data[,14]
data$Percent_Population_under_5_Census <- data[,23] / data[,14]
data$Percent_Population_5_17_Census <- data[,26] / data[,14]
data$Percent_Population_18_24_Census <- data[,29] / data[,14]
data$Percent_Population_25_44_Census <- data[,32] / data[,14]
data$Percent_Population_45_64_Census <- data[,35] / data[,14]
data$Percent_Population_over_65_Census <- data[,38] / data[,14]
data$Percent_Population_Living_in_Group_Quarters_Census <- data[,41] / data[,14]
data$Percent_Population_Living_in_Institutional_Group_Quarters_Census <- data[,42] / data[,14]
data$Percent_Population_Living_in_Non_Institutional_Group_Quarters_Census <- data[,43] / data[,14]
data$Percent_Population_Hispanic_Census <- data[,44] / data[,14]
data$Percent_Population_White_Census <- data[,47] / data[,14]
data$Percent_Population_Black_Census <- data[,50] / data[,14]
data$Percent_Population_American_Indian_or_Alaskan_Native <- data[,53] / data [,14]
data$Percent_Population_Asian <- data[,56] / data [,14]
data$Percent_Population_Hawaiian_or_Other_Pacific_Islander_Census <- data[,59] / data [,14]
data$Percent_Population_Other_Census <- data[,62] / data [,14]
data$Percent_Population_That_Speak_Language_Other_Than_English_ACS <- data[,67] / data [,65]
data$Percent_Population_25_and_over_with_no_HS <- data[,71] / data [,69]
data$Percent_Population_25_and_over_with_College_Degree_or_Higher <- data[,73] / data [,69]
data$Percent_Population_Blw_Pov_Level_ACS <- data[,75] / data [,77]
data$Percent_Population_Different_House_One_Year_Ago <- data[,81] / data [,79]
data$Percent_Households_No_One_Over_14_Speaks_English_Very_Well_Spanish_ACS <- data[,83] / data [,134]
data$Percent_Households_No_One_Over_14_Speaks_English_Very_Well_Indo_Euro_ACS <- data[,85] / data [,134]
data$Percent_Households_No_One_Over_14_Speaks_English_Very_Well_Asian_PI_ACS <- data[,87] / data [,134]
data$Percent_Households_No_One_Over_14_Speaks_English_Very_Well_Other_ACS <- data[,89] / data [,134]
data$Percent_Households_No_One_Over_14_Speaks_English_Very_Well_All_ACS <- data[,91] / data [,134]
data$Percent_Households_Related_Family_Census <- data[,93] / data [,133]
data$Percent_Households_Married_Couple_Census <- data[,96] / data [,133]
data$Percent_Households_No_Married_Couple_Census <- data[,99] / data [,133]
data$Percent_Households_Female_Householder_No_Husband_Present_Census <- data[,102] / data [,133]
data$Percent_Households_Non_Family_Census <- data[,105] / data [,133]
data$Percent_Households_Single_Person_Householder_Census <- data[,108] / data [,133]
data$Percent_Households_With_One_or_More_People_Under_18_Census <- data[,111] / data [,133]
data$Average_Household_Size <- data[,114] / data [,133]
data$Percent_Families_With_Related_Children_Under_6_Census <- data[,117] / data [,93]
data$Percent_Households_Moved_in_2005_or_Later_ACS <- data[,120] / data [,134]
data$Percent_Households_With_Public_Assistance_Income_ACS <- data[,122] / data [,134]
data$Percent_Housing_Units_Vacant_Census <- data[,136] / data [,130]
data$Census_Occp_Units_Dividedby_Mailback_Area_Count <- data[,133] / data [,167]
data$Percent_Housing_Units_Rented_Census <- data[,139] / data [,130]
data$Percent_Housing_Units_Owner_Occuppied_Census <- data[,142] / data [,133]
data$Percent_Housing_Units_in_Single_Unit_Structure_ACS <- data[,145] / data [,134]
data$Percent_Housing_Units_in_Multiple_Unit_Structure_ACS <- data[,147] / data [,134]
data$Percent_Housing_Units_in_Ten_Plus_Unit_Structure_ACS <- data[,149] / data [,134]
data$Percent_Housing_Units_Mobile_Homes_ACS <- data[,151] / data [,134]
data$Percent_Housing_Units_Crowded_Occupancy_ACS <- data[,153] / data [,134]
data$Percent_Housing_Units_Without_Telephone_ACS <- data[,155] / data [,134]
data$Percent_Housing_Units_Lacking_Plumbing_ACS <- data[,157] / data [,134]
data$Percent_Housing_Units_Built_Last_Five_Years_ACS <- data[,159] / data [,131]

if (data$State_Name == 'Virginia' or 'West Virginia' or 'D.C.' or 'Pennsylvania' or 'Maryland' or 'Delaware') data$region <- 'Mid-Atlantic' else if (data$State_Name <= 'New York' or 'New Jersey') data$region <- 'Northeast' else if (data$State_Name <= 'Connecticut' or 'Vermont' or 'New Hampshire' or 'Massachusetts' or 'Maine' or 'Rhode Island') data$region <- 'New England' else if (data$State_Name <= 'Kentucky' or 'North Carolina' or 'Tennessee' or 'North Carolina' or 'South Carolina' or 'Georgia' or 'Alabama' or 'Mississippi' or 'Florida') data$region <- 'Southeast' else if (data$State_Name <= 'Ohio' or 'Michigan' or 'Indiana' or 'Illinios' or 'Wisconsin' or 'Minnesota') data$region <- 'Great Lakes' else if (data$State_Name <= 'Iowa' or 'Missouri' or 'Nebraska' or 'Kansas') data$region <- 'Midwest' else if (data$State_Name <= 'Arkansas' or 'Louisiana' or 'Oklahoma' or 'Texas' or 'New Mexico') data$region <- 'Southwest' else if (data$State_Name <= 'Utah' or 'Colorado' or 'Wyoming' or 'South Dakota' or 'North Dakota' or 'Montana') data$region <- 'Mountain West' else if (data$State_Name <= 'California' or 'Arizona' or 'Nevada') data$region <- 'West' else if (data$State_Name <= 'Washington' or 'Oregon' or 'Idaho') data$region <- 'Pacific Northwest' else if (data$State_Name <= 'Hawaii') data$region <- 'Hawaii' else if (data$State_Name <= 'Alaska') data$region <- 'Alaska' else if (data$State_Name <= 'Puerto Rico') data$region <- 'Puerto Rico' else if (data$State_Name <= 'Guam') data$region <- 'Guam' else if (data$State_Name <= 'Northern Mariana Islands') data$region <- 'Northern Mariana Islands' else if (data$state_name <= 'American Samoa') data$region <- 'American Samoa' else if (data$state_name <= 'Virgin Islands') data$region <- 'Virgin Islands' else data$region <- 'Territories'

if (data$State_Name == 'Virginia' or 'West Virginia' or 'D.C.' or 'Pennsylvania' or 'Maryland' or 'Delaware') data$region <- 'Mid-Atlantic' else if (data$State_Name = 'New York' or 'New Jersey') data$region <- 'Northeast' else if (data$State_Name = 'Connecticut' or 'Vermont' or 'New Hampshire' or 'Massachusetts' or 'Maine' or 'Rhode Island') data$region <- 'New England' else if (data$State_Name = 'Kentucky' or 'North Carolina' or 'Tennessee' or 'North Carolina' or 'South Carolina' or 'Georgia' or 'Alabama' or 'Mississippi' or 'Florida') data$region <- 'Southeast' else if (data$State_Name = 'Ohio' or 'Michigan' or 'Indiana' or 'Illinios' or 'Wisconsin' or 'Minnesota') data$region <- 'Great Lakes' else if (data$State_Name = 'Iowa' or 'Missouri' or 'Nebraska' or 'Kansas') data$region <- 'Midwest' else if (data$State_Name = 'Arkansas' or 'Louisiana' or 'Oklahoma' or 'Texas' or 'New Mexico') data$region <- 'Southwest' else if (data$State_Name = 'Utah' or 'Colorado' or 'Wyoming' or 'South Dakota' or 'North Dakota' or 'Montana') data$region <- 'Mountain West' else if (data$State_Name = 'California' or 'Arizona' or 'Nevada') data$region <- 'West' else if (data$State_Name = 'Washington' or 'Oregon' or 'Idaho') data$region <- 'Pacific Northwest' else if (data$State_Name = 'Hawaii') data$region <- 'Hawaii' else if (data$State_Name = 'Alaska') data$region <- 'Alaska' else if (data$State_Name = 'Puerto Rico') data$region = 'Puerto Rico' else if (data$State_Name = 'Guam') data$region = 'Guam' else if (data$State_Name = 'Northern Mariana Islands') data$region = 'Northern Mariana Islands' else if (data$state_name = 'American Samoa') data$region = 'American Samoa' esle if (data$state_name = 'Virgin Islands') data$region = 'Virgin Islands' else data$region <- 'Territories'

if (data$State_Name != 'Arizona') data$region <- 'Southwest'


if (data$State_Name == 'Arizona') data$region <- 'Southwest'

Hello <- c('Arizona', 'Texas', 'Oklahoma')
data$region <- ifelse((data$State_name %in% Hello), 'Southwest', ifelse)

sum(is.na (data))

cor(sort(table(data$State_name)/nrow(data)), by(data=data$Mail_Return_Rate_CEN_2010, data$State_name, mean))
[1] 0.1514753
cov(sort(table(data$State_name)/nrow(data)), by(data=data$Mail_Return_Rate_CEN_2010, data$State_name, mean))
[1] 0.008682457
plot(by(data=data$Mail_Return_Rate_CEN_2010, data$State_name, mean))
cov(sort(table(data$State_name)/nrow(data)), by(data=data$Mail_Return_Rate_CEN_2010, data$State_name, mean, na.rm=FALSE))
[1] 0.008682457
cov(sort(table(data$State_name)/nrow(data)), by(data=data$Mail_Return_Rate_CEN_2010, data$State_name, mean, trim = .2,na.rm=FALSE))
[1] 0.01008539
cor(sort(table(data$State_name)/nrow(data)), by(data=data$Mail_Return_Rate_CEN_2010, data$State_name, mean, trim = .2,na.rm=FALSE))
[1] 0.1695774



Politics <- read.delim("C:/Users/jdanehower/Desktop/Republican.docx", header = FALSE, sep = ")")
              
BetterPolitics <- read.delim("C:/Users/jdanehower/Desktop/Politics.txt", header = FALSE, sep = "|")

colnames(BetterPolitics) <- c("State_name", "Party", "Party_Margin")

# Finds the mean for Alabama
# To find the mean for each state, there's probably some easy way to use a for loop to do it
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Alabama"])
# Finds the mean for the whole US
mean(data$Mail_Return_Rate_CEN_2010)
# Find which states have the highest return rate
# Basically if you could find some way to do a list here ranking in order that would be great

# Find which states have the highest amount of returned census forms
# First find the number of census forms returned out in each block
data$Forms_Returned <- data$Mail_Return_Rate_CEN_2010 * data$Tot_Occp_Units_CEN_2010
# Then sum it for each state
sum(data$Forms_Returned [data$State_name == "Alabama"])

State_Means <- c(mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Alabama"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Alaska"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Arizona"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Arkansas"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "California"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Colorado"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Connecticut"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Delaware"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "District of Colu"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Florida"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Georgia"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Hawaii"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Idaho"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Illinois"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Indiana"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Iowa"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Kansas"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Kentucky"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Louisiana"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Maine"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Maryland"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Missouri"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Montana"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Nebraska"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Nevada"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "New Hampshire"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "New Jersey"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "New Mexico"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "New York"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "North Carolina"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "North Dakota"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Ohio"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Oklahoma"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Oregon"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Pennsylvania"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Rhode Island"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "South Carolina"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "South Dakota"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Tennessee"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Texas"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Utah"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Vermont"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Virginia"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Washington"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "West Virginia"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Wisconsin"]),
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Wyoming"]))

mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Kentucky"])
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Lousiana"])
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Louisiana"])
mean(data$Mail_Return_Rate_CEN_2010[data$State_name == "Maine"])

State_Return_Rate <- by(data$Mail_Return_Rate_CEN_2010,data$State_name,mean)
States <- read.csv("C:/Users/jdanehower/Desktop/States.txt", header = FALSE)
