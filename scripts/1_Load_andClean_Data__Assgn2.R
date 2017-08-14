##########Code to load, clean and transform 
##########the Crash Data for Data Visualisation Assignment 2

####Set to the working directory with data
setwd("..")
setwd("./data")

####Load required packages
library(magrittr)

####Create a list of files in ACCIDENT.zip
Accident<- unzip("ACCIDENT.zip",list=TRUE)$Name


####Read each file into the environment
for(i in 1:length(Accident)){
    assign(
        sub(".csv","",Accident[i]) ,
        read.csv2(
            unz(description = "ACCIDENT.zip",
                file=Accident[i]), 
            sep=','))
}



####Reset working directory to main folder
setwd("..")
setwd("./scripts")