# ¿Cuándo es menor la demanda de reservas?

## Leer el dataset y analizarlo

hotelBooking <- read.csv("../data/hotel_bookings_clean.csv", header = TRUE, stringsAsFactors = FALSE)
str(hotelBooking)
summary(hotelBooking)

## Ver cuántas reservas se hacen en cada mes

table(hotelBooking$arrival_date_month)

## Crear una tabla del número de reservas por mes

hotelBookingMonthdf <- data.frame(Month = table(hotelBooking$arrival_date_month))

## Ordenarlos ascendentemente

hotelBookingMonthdf <- hotelBookingMonthdf[order(hotelBookingMonthdf$Month.Freq), ]

## Gráfica de barras

barplot(hotelBookingMonthdf$Month.Freq, main = "Número de reservas por mes", names.arg = hotelBookingMonthdf$Month.Var1, col = "blue")
