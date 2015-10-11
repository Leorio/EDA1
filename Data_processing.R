# I threw out the unnecessary data before loading the the file, as the file was very big
household_data<-read.table("household.txt",header=TRUE)
#namesVector<-as.vector(t(household_data)[,1])
#names(household_data)<-namesVector
#household_data<-household_data[-1,]

N<-nrow(household_data)

# Naming columns
hd_date<-as.character(unlist(household_data[,1]))
hd_time<-as.character(unlist(household_data[,2]))
gl_active_power<-as.numeric(as.character(household_data[,3]))
gl_reactive_power<-as.numeric(as.character(household_data[,4]))
Voltage<-as.numeric(as.character(household_data[,5]))
Sub_metering_1<-as.numeric(as.character(household_data[,7]))
Sub_metering_2<-as.numeric(as.character(household_data[,8]))
Sub_metering_3<-as.numeric(as.character(household_data[,9]))

hd_datetime<-paste(hd_date,hd_time)
hd_datetime_nf<-strptime(hd_datetime,"%d/%m/%Y %H:%M:%S")
