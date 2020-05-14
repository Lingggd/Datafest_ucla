

US <- datafest_updated[which(datafest_updated$country_region_code == "US"),];
US_cases <- US$confirmed_cases;
US_recreation <- US$retail_and_recreation_percent_change_from_baseline;
US_grocery <- US$grocery_and_pharmacy_percent_change_from_baseline;
US_parks <- US$parks_percent_change_from_baseline;
US_transit <- US$transit_stations_percent_change_from_baseline;
US_workplace <- US$workplaces_percent_change_from_baseline;
US_residential <- US$residential_percent_change_from_baseline;

####################
US_increase <- c(0,diff(US$confirmed_cases))
US_lockdown <- 30
####################


xrange <- 1:76


plot(US_recreation~xrange, ylim = c(-110,50), col = "red", type = "n", xlab = "Time (days)", ylab = "Percent Change (Mobility)", main = "Mobility Change of US");
lines(xrange, US_recreation, col = "red", lwd = 2) 
lines(xrange, US_grocery, col = "blue", lwd = 2)
lines(xrange, US_parks, col = "green", lwd = 2)
lines(xrange, US_transit, col = "yellow", lwd = 2)
lines(xrange, US_workplace, col = "black", lwd = 2)
lines(xrange, US_residential, col = "brown", lwd = 2)

abline(v=US_lockdown, col = "red", lwd = 2, lty = 2)

legend("bottomleft", c("Recreation", "Grocery", "Parks", "Transit", "Workplace", "Residential"),
       col = c("red", "blue", "green", "yellow", "black", "brown", "purple"),
       lwd = c(2,2,2,2,2,2), lty = c(1,1,1,1,1,1), inset = 0.05)

#lines(xrange, US_cases/20000-110, col = "purple", lwd = 4, lty = 6)
plot(US_increase~xrange, type="l", col = "purple", lwd = 3, main = "Daily Increased Cases of US", xlab = "Time (days)", ylab = "Daily Increased Cases")

abline(v=US_lockdown, col = "red", lwd = 2, lty = 2)

####################################


IN <- datafest_updated[which(datafest_updated$country_region_code == "IN"),];
IN_cases <- IN$confirmed_cases;
IN_recreation <- IN$retail_and_recreation_percent_change_from_baseline;
IN_grocery <- IN$grocery_and_pharmacy_percent_change_from_baseline;
IN_parks <- IN$parks_percent_change_from_baseline;
IN_transit <- IN$transit_stations_percent_change_from_baseline;
IN_workplace <- IN$workplaces_percent_change_from_baseline;
IN_residential <- IN$residential_percent_change_from_baseline;
xrange <- 1:76
##########
IN_increase <- c(0,diff(IN$confirmed_cases))
IN_lockdown <- 40
##########
plot(IN_recreation~xrange, ylim = c(-110,50), col = "red", type = "n", xlab = "Time (days)", ylab = "Percent Change", main = "Mobility Change of India");
lines(xrange, IN_recreation, col = "red", lwd = 2) 
lines(xrange, IN_grocery, col = "blue", lwd = 2)
lines(xrange, IN_parks, col = "green", lwd = 2)
lines(xrange, IN_transit, col = "yellow", lwd = 2)
lines(xrange, IN_workplace, col = "black", lwd = 2)
lines(xrange, IN_residential, col = "brown", lwd = 2)

abline(v=IN_lockdown, col = "red", lwd = 2, lty = 2)

legend("bottomleft", c("Recreation", "Grocery", "Parks", "Transit", "Workplace", "Residential"),
       col = c("red", "blue", "green", "yellow", "black", "brown", "purple"),
       lwd = c(2,2,2,2,2,2), lty = c(1,1,1,1,1,1), inset = 0.05
)



plot(IN_increase~xrange, type="l", col = "purple", lwd = 3, main = "Daily Increased Cases of India", xlab = "Time (days)", ylab = "Daily Increased Cases")
abline(v=IN_lockdown, col = "red", lwd = 2, lty = 2)
#lines(xrange, IN_cases/2000-100, col = "purple", lwd = 4, lty = 6)

##################################################################
##########
IT_increase <- c(0,diff(IT$confirmed_cases))
IT_lockdown <- 27
##########

IT <- datafest_updated[which(datafest_updated$country_region_code == "IT"),];
IT_cases <- IT$confirmed_cases;
IT_recreation <- IT$retail_and_recreation_percent_change_from_baseline;
IT_grocery <- IT$grocery_and_pharmacy_percent_change_from_baseline;
IT_parks <- IT$parks_percent_change_from_baseline;
IT_transit <- IT$transit_stations_percent_change_from_baseline;
IT_workplace <- IT$workplaces_percent_change_from_baseline;
IT_residential <- IT$residential_percent_change_from_baseline;
xrange <- 1:76


plot(IT_recreation~xrange, ylim = c(-110,50), col = "red", type = "n", xlab = "Time (days)", ylab = "Percent Change (Mobility)", main = "Mobility Change of Italy");
lines(xrange, IT_recreation, col = "red", lwd = 2) 
lines(xrange, IT_grocery, col = "blue", lwd = 2)
lines(xrange, IT_parks, col = "green", lwd = 2)
lines(xrange, IT_transit, col = "yellow", lwd = 2)
lines(xrange, IT_workplace, col = "black", lwd = 2)
lines(xrange, IT_residential, col = "brown", lwd = 2)


abline(v=IT_lockdown, col = "red", lwd = 2, lty = 2)

legend("bottomleft", c("Recreation", "Grocery", "Parks", "Transit", "Workplace", "Residential"),
       col = c("red", "blue", "green", "yellow", "black", "brown", "purple"),
       lwd = c(2,2,2,2,2,2), lty = c(1,1,1,1,1,1), inset = 0.05
)



plot(IT_increase~xrange, type="l", col = "purple", lwd = 3,main = "Daily Increased Cases of Italy", ylab = "Daily Increased Cases", xlab = "Time (days)")
abline(v=IT_lockdown, col = "red", lwd = 2, lty = 2)
##################################################################
##########
KR_increase <- c(0,diff(KR$confirmed_cases))
KR_lockdown <- 9
##########
KR <- datafest_updated[which(datafest_updated$country_region_code == "KR"),];
KR_cases <- KR$confirmed_cases;
KR_recreation <- KR$retail_and_recreation_percent_change_from_baseline;
KR_grocery <- KR$grocery_and_pharmacy_percent_change_from_baseline;
KR_parks <- KR$parks_percent_change_from_baseline;
KR_transit <- KR$transit_stations_percent_change_from_baseline;
KR_workplace <- KR$workplaces_percent_change_from_baseline;
KR_residential <- KR$residential_percent_change_from_baseline;
xrange <- 1:76


plot(KR_recreation~xrange, ylim = c(-60,100),type = "n", xlab = "Time (days)", ylab = "Percent Change (Mobility)",main = "Mobility Change of Korea");
lines(xrange, KR_recreation, col = "red", lwd = 2) 
lines(xrange, KR_grocery, col = "blue", lwd = 2)
lines(xrange, KR_parks, col = "green", lwd = 2)
lines(xrange, KR_transit, col = "yellow", lwd = 2)
lines(xrange, KR_workplace, col = "black", lwd = 2)
lines(xrange, KR_residential, col = "brown", lwd = 2)
abline(v=KR_lockdown, col = "red", lwd = 2, lty = 2)

legend("topleft", c("Recreation", "Grocery", "Parks", "Transit", "Workplace", "Residential"),
       col = c("red", "blue", "green", "yellow", "black", "brown", "purple"),
       lwd = c(2,2,2,2,2,2), lty = c(1,1,1,1,1,1)
)



plot(KR_increase~xrange, type="l", col = "purple", xlab = "Time (days)", ylab = "Daily Increased Cases", lwd = 3, main = "Daily Increased Cases of Korea")
abline(v=KR_lockdown, col = "red", lwd = 2, lty = 2)

################################################################
##########




