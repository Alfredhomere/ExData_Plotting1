# Load and read the data on my computer
setwd("Coursera")
list.dirs()
setwd("./Exporatory_Data_Analysis/week1/project1")
list.files()
dataFile <- "household_power_consumption.txt"
dataFile
data <- read.table(dataFile,header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")
data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
subSetData
# Plotting the data for Plot1.R
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
