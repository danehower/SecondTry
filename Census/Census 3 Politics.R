BetterPolitics <- read.delim("C:/Users/jdanehower/Desktop/Politics.txt", header = FALSE, sep = "|")

colnames(BetterPolitics) <- c("State_name", "Party", "Party_Margin")

BetterPolitics

data_with_Politics <- merge(BetterPolitics,data,by.BetterPolitics="State_name", by.data="State_name")

BetterPolitics <- data.frame(BetterPolitics)


