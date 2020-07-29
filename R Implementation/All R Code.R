# FL Daily Deaths
dat <- httr::GET("https://services1.arcgis.com/CY1LXxl9zlJeBuRZ/ArcGIS/rest/services/Florida_COVID_19_Deaths_by_Day/FeatureServer/0/query?where=ObjectId>0&objectIds=&time=&resultType=standard&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjson&token=")
dat <- httr::content(dat, as = "text")
dat <- jsonlite::fromJSON(dat)
dat <- dat$features$attributes
dat$Date <- as.POSIXct(dat$Date/1000, origin = "1970-01-01", tz = "UTC")
head(dat)

# Florida Cases by Day
dat <- httr::GET("https://services1.arcgis.com/CY1LXxl9zlJeBuRZ/ArcGIS/rest/services/Florida_COVID_19_Cases_by_Day_For_Time_Series/FeatureServer/0/query?where=ObjectId>0&objectIds=&time=&resultType=standard&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjson&token=")
dat <- httr::content(dat, as = "text")
dat <- jsonlite::fromJSON(dat)
dat <- dat$features$attributes
dat$Date <- as.POSIXct(dat$Date/1000, origin = "1970-01-01", tz = "UTC")
head(dat)

# County-level health metrics
dat <- httr::GET("https://services1.arcgis.com/CY1LXxl9zlJeBuRZ/ArcGIS/rest/services/Metrics_All/FeatureServer/0/query?where=ObjectId>0&objectIds=&time=&resultType=standard&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjson&token=")
dat <- httr::content(dat, as = "text")
dat <- jsonlite::fromJSON(dat)
dat <- dat$features$attributes
dat$Week_StartDate <- as.POSIXct(dat$Week_StartDate/1000, origin = "1970-01-01", tz = "UTC")
dat$Week_EndDate <- as.POSIXct(dat$Week_EndDate/1000, origin = "1970-01-01", tz = "UTC")
dat$StartDate2 <- as.POSIXct(dat$StartDate2/1000, origin = "1970-01-01", tz = "UTC")
dat$EndDate2 <- as.POSIXct(dat$EndDate2/1000, origin = "1970-01-01", tz = "UTC")
head(dat)

# State-level health metrics
dat <- httr::GET("https://services1.arcgis.com/CY1LXxl9zlJeBuRZ/ArcGIS/rest/services/Florida_Health_Metrics_StateSum/FeatureServer/0/query?where=ObjectId>0&objectIds=&time=&resultType=standard&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjson&token=")
dat <- httr::content(dat, as = "text")
dat <- jsonlite::fromJSON(dat)
dat <- dat$features$attributes
dat$Week_StartDate <- as.POSIXct(dat$Week_StartDate/1000, origin = "1970-01-01", tz = "UTC")
dat$Week_EndDate <- as.POSIXct(dat$Week_EndDate/1000, origin = "1970-01-01", tz = "UTC")
dat$StartDate <- as.POSIXct(dat$StartDate/1000, origin = "1970-01-01", tz = "UTC")
dat$EndDate <- as.POSIXct(dat$EndDate/1000, origin = "1970-01-01", tz = "UTC")
head(dat)

# Cases by county
dat <- httr::GET("https://services1.arcgis.com/CY1LXxl9zlJeBuRZ/ArcGIS/rest/services/Florida_COVID19_Cases_by_County_vw/FeatureServer/0/query?where=ObjectId>0&objectIds=&time=&resultType=standard&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjson&token=")
dat <- httr::content(dat, as = "text")
dat <- jsonlite::fromJSON(dat)
dat <- dat$features$attributes
dat$Week_StartDate <- as.POSIXct(dat$Week_StartDate/1000, origin = "1970-01-01", tz = "UTC")
dat$Week_EndDate <- as.POSIXct(dat$Week_EndDate/1000, origin = "1970-01-01", tz = "UTC")
dat$StartDate <- as.POSIXct(dat$StartDate/1000, origin = "1970-01-01", tz = "UTC")
dat$EndDate <- as.POSIXct(dat$EndDate/1000, origin = "1970-01-01", tz = "UTC")
head(dat)

# Hospital bed census Data
dat <- httr::GET("https://services.arcgis.com/3wFbqsFPLeKqOlIK/ArcGIS/rest/services/HOSPITALS_esri/FeatureServer/0/query?where=FileNumber>0&objectIds=&time=&resultType=standard&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjson&token=")
dat <- httr::content(dat, as = "text")
dat <- jsonlite::fromJSON(dat)
dat <- dat$features$attributes
dat$CreationDate <- as.POSIXct(dat$CreationDate/1000, origin = "1970-01-01", tz = "UTC")
dat$EditDate <- as.POSIXct(dat$EditDate/1000, origin = "1970-01-01", tz = "UTC")
head(dat)


