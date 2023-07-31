library(epiDisplay)
library("tidygeocoder", lib.loc="C:/Users/ksahu/AppData/Local/Programs/R/R-4.2.3/library")
library(dplyr, warn.conflicts = FALSE)
fullhomeaddress_lat_longs_arc <- Temp_perm_address_data_2 %>%
  geocode(full.home.address, method = 'arcgis', lat = latitude , long = longitude)

fullhomeaddress_lat_longs_arc_temp <- Temp_perm_address_data_2 %>%
  geocode(full.temp.address, method = 'arcgis', lat = latitude , long = longitude)

fullhomeaddress_lat_longs_arc$lat_temp<-fullhomeaddress_lat_longs_arc_temp$latitude
fullhomeaddress_lat_longs_arc$long_temp<-fullhomeaddress_lat_longs_arc_temp$longitude
