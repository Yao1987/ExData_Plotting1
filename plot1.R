

fileName="exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataName="household_power_consumption.txt"
unzip(fileName)
data<-read.table(dataName,sep=";",header = TRUE)
selected=data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
globalActivePower <- as.numeric(selected$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
                   
