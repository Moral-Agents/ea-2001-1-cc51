#reservas con ni�os y/o beb�s
hotelBooking <- read.csv("data/hotel_bookings_clean.csv", header = TRUE, stringsAsFactors = FALSE)

hotelBooking$minors <- ifelse((hotelBooking$children>0 |hotelBooking$babies>0),TRUE,FALSE)

table(hotelBooking$minors)

barplot(table(hotelBooking$minors), col = c("green"), main = "Cantidad de reservas con ni�os o beb�s", xlab = "FALSE: sin ni�os o beb�s        TRUE: con ni�os o beb�s")



