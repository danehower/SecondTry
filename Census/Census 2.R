# Defines State_Return_Rate as the mean return rate for each state
State_Return_Rate <- by(data$Mail_Return_Rate_CEN_2010,data$State_name,mean)

# Defines vector Minnesota_Response_Rates as the response rates for each block in Minnesota
Minnesota_Response_Rates <- data$Mail_Return_Rate_CEN_2010[data$State_name == "Minnesota"]
Total_Response_Rate <- data$Mail_Return_Rate_CEN_2010

# F test to find out if the variances are the same
var.test(Minnesota_Response_Rates,Total_Response_Rate)

# t test to find out if Minnesota's mean is any different from the total population
t.test(Minnesota_Response_Rates,Total_Response_Rate, var.equal=FALSE, paired=FALSE)
# finds tabulated value of t with 2619 degrees of freedom
qt(0.975,2619)
