png(filename = "plot1.png", width = 480, height = 480)

par(mfrow=c(2,2))
plot(hd_datetime_nf,gl_active_power,type='l',xlab="",ylab='Global Active Power')
plot(hd_datetime_nf,Voltage,type='l',xlab="datetime")
plot(hd_datetime_nf,Sub_metering_1,type='l',ylab='Energy sub metering')
lines(hd_datetime_nf,Sub_metering_2,type='l',col='red')
lines(hd_datetime_nf,Sub_metering_3,type='l',col='blue')
legend(x="topright",bty="n", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1)
)
plot(hd_datetime_nf,gl_reactive_power,type='l',xlab="datetime",ylab="Global_reactive_power")

dev.off()
