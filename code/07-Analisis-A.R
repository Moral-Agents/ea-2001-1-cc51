# ¿En qué meses del año se producen más cancelaciones de reservas?

## Leer el dataset y analizarlo

hotelBooking <- read.csv("data/hotel_bookings_clean.csv", header = TRUE, stringsAsFactors = FALSE)
#str(hotelBooking)
#summary(hotelBooking)

## Ver el número de cancelaciones de todos los meses y guardarlos
table(hotelBooking$arrival_date_month[hotelBooking$is_canceled == 1])

counts = sort(table(hotelBooking$arrival_date_month[hotelBooking$is_canceled == 1]))

barplot(counts, col = c("blue"), main = "Meses del año con sus cancelaciones")



