# ¿En qué meses del año se producen más cancelaciones de reservas?

## Leer el dataset y analizarlo

hotelBooking <- read.csv("data/hotel_bookings_clean.csv")
str(hotelBooking)
summary(hotelBooking)

## Vemos si la columna que necesitamos tiene valores NA

hotelBooking$is_canceled[is.na(hotelBooking$is_canceled) == TRUE]

## Ver el número de cancelaciones de todos los meses y guardarlos

datos <- table(hotelBooking$arrival_date_month[hotelBooking$is_canceled == 1])

## Ordenar los datos obtenidos anteriormente y guardarlos

datos <- sort(datos)

## Gráfica de barras para visualizarlos mejor

barplot(datos, col = c("blue"), main = "Número de cancelaciones por meses del año")



