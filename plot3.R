data<- read.table("household_power_consumption.txt", sep=";", header = T, stringsAsFactors = F,dec=".")
dt <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime<-strptime(paste(dt$Date,dt$Time, sep = " "),"%d%m%Y")
globalactpower<-as.numeric(dt$Global_active_power)

subMetering1<-as.numeric(dt$Sub_metering_1)
subMetering2<-as.numeric(dt$Sub_metering_2)
subMetering3<-as.numeric(dt$Sub_metering_3)

png("plot3.png",width = 480, height = 480)
plot(datetime, subMetering1, ylab="Energy Submetering", xlab="")
#plot(datetime, subMetering1, type = "l", ylab ="Energy Submetering", xlab= "")
lines(datetime, subMetering2, type = "l",col = "red")
lines(datetime, subMetering3, type = "l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"))
dev.off()
