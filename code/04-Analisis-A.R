# ¿Cuándo es menor la demanda de reservas?

## Leer el dataset y analizarlo

hotelBooking <- read.csv("data/hotel_bookings_clean.csv")
str(hotelBooking)
summary(hotelBooking)

## Vemos si la columna que necesitamos tiene valores NA

hotelBooking$arrival_date_month[is.na(hotelBooking$arrival_date_month) == TRUE]

## Ver cuántas reservas se hacen en cada mes

table(hotelBooking$arrival_date_month)

## Crear una tabla del número de reservas por mes

hotelBookingMonthdf <- data.frame(Month = table(hotelBooking$arrival_date_month))

## Ordenarlos ascendentemente

hotelBookingMonthdf <- hotelBookingMonthdf[order(hotelBookingMonthdf$Month.Freq), ]

## Gráfica de barras

barplot(hotelBookingMonthdf$Month.Freq, main = "Número de reservas por mes", names.arg = hotelBookingMonthdf$Month.Var1, col = "blue")
