# ¿Es importante contar con espacios de estacionamiento?

## Leer el dataset y analizarlo

hotelBooking <- read.csv("../data/hotel_bookings_clean.csv", header = TRUE, stringsAsFactors = FALSE)
str(hotelBooking)
summary(hotelBooking)

## Ver cuántos requieren estacionamiento de las reservas, con la función table()

table(hotelBooking$required_car_parking_spaces)

# Generar el gráfico de barras para verlo mejor, con la función barplot()

barplot(table(hotelBooking$required_car_parking_spaces), main = "Número de reservas por requerimiento de estacionamiento",
        names.arg = c("No requiere", "Sí requiere"), col = "blue")
