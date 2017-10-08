data<- read.table("household_power_consumption.txt", sep=";", header = T,  dec=".")
dt <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime<-strptime(paste(dt$Date,dt$Time, setp = " "),"%d%m%Y")

globalactpower<-as.numeric(dt$Global_active_power)
png("plot2.png",width = 480, height = 480)

plot(datetime, globalactpower, type = "l", xlab = "", ylab= "Global Active Power(kilowatts)")
dev.off()
