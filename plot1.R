## load the data from the directory
data_file <- "./household_power_consumption.txt"
all_data <- read.table(data_file, header = T,sep = ";",na.strings = "?")

# fetch the data for 01/02/2007 and 02/02/2007
plot_data <- all_data[all_data$Date %in% c("1/2/2007","2/2/2007"),]

#make the first plot
hist(plot_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")