png(filename = "plot1.png",width = 480, height = 480)

plot(hd_datetime_nf,Sub_metering_1,type='l',xlab="",ylab='Energy sub metering')
lines(hd_datetime_nf,Sub_metering_2,type='l',col='red')
lines(hd_datetime_nf,Sub_metering_3,type='l',col='blue')
legend(x="topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1)
       )

dev.off()
