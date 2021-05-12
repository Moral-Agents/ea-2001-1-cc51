# ¿Está aumentando la demanda con el tiempo?

## Leer el dataset y analizarlo

hotelBooking <- read.csv("data/hotel_bookings_clean.csv",header = TRUE, stringsAsFactors = FALSE);
#str(hotelBooking)
#summary(hotelBooking)

## Visualizar la cantidad de registros que hay en cada año

table(hotelBooking$arrival_date_year);

## Crear una tabla del número de reservas por año 

hotelBookingYeardf <- data.frame(Year = table(hotelBooking$arrival_date_year));
View(hotelBookingYeardf);

## Visualizar la cantidad de reservas por año en un gráfico de barras

barplot(hotelBookingYeardf$Year.Freq, main = "Número de reservas por año", names.arg = hotelBookingYeardf$Year.Var1, col = "blue");
