Calculate the distance between the home address and temporary accommodation for households registered with CRC. Nova Scotia wildfire 2023 as a use case.

The dataset generated from EMIS using the table- Reginformation extended with filter NS wildfire as the event. 

Case file number as ID, street address, postal code, province, and country for Temporary and home address has been selected. Only households with both valid values have been separated out. 

Geocoding of temporary and permanent addresses has been done using the Tidygeocoder package in R with ArcGIS as the service provider. 

Geodesic Distance in km. between both points has been calculated using the PBI DAX formula and added to the table as a separate column.

DAX code:

Distance2 = var Lat1 = MIN('Distancetable'[latitude]) var Lon1 =MIN(Distancetable[longitude]) var Lat2 =MIN(Distancetable[lat_temp]) var Lon2 = MIN(Distancetable[long_temp]) var P = DIVIDE( PI(),180) var A =0.5 -COS((Lat2-Lat1)*p)/2 + COS(Lat1*P)*(1-COS((Lon2-Lon1)*P))/2 var final =12742*ASIN((SQRT(A))) return final

The Table with address geocodes, distance and other related variables like age, gender, type of accommodation and family size have been added to the EMIS dataset to create a local model. 

In the ArcGIS desktop version, XY POINT TO LINE function has been used to visualize the path from permanent to temporary address. 


