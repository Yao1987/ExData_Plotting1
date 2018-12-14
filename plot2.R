Sys.setlocale("LC_TIME", "English")

fileName="exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataName="household_power_consumption.txt"
unzip(fileName)
data<-read.table(dataName,sep=";",header = TRUE)
selected=data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
datetime <- strptime(paste(selected$Date, selected$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(selected$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
