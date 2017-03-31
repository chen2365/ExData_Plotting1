## load the data from the directory
data_file <- "./household_power_consumption.txt"
all_data <- read.table(data_file, header = T,sep = ";",na.strings = "?")

# fetch the data for 01/02/2007 and 02/02/2007
plot_data <- all_data[all_data$Date %in% c("1/2/2007","2/2/2007"),]

#create time variable and update the data
time_vec <- strptime(paste(plot_data$Date,plot_data$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
plot_data <- cbind(time_vec, plot_data)

#make the second plot
plot(plot_data$time_vec, plot_data$Global_active_power,type = "l",col = "black", xlab = "",ylab = "Global Active Power (kilowatts)")
