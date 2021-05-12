#reservas con niños y/o bebés
hotelBooking <- read.csv("data/hotel_bookings_clean.csv", header = TRUE, stringsAsFactors = FALSE)

hotelBooking$minors <- ifelse((hotelBooking$children>0 |hotelBooking$babies>0),TRUE,FALSE)

table(hotelBooking$minors)

barplot(table(hotelBooking$minors), col = c("green"), main = "Cantidad de reservas con niños o bebés", xlab = "FALSE: sin niños o bebés        TRUE: con niños o bebés")



