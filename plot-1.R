#plot 1
data<- read.csv("household_power_consumption.txt", sep=";", header = T,  dec=".")
dt <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalactpower<-as.numeric(dt$Global_active_power)
png("plot1.png",width = 480, height = 480)
#par(mar = c(4,4,2,1)) 
hist(globalactpower, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
