hotelBooking <- read.csv("data/hotel_bookings_clean.csv", header = TRUE, stringsAsFactors = FALSE);

hotelBooking$hotel <- as.factor(hotelBooking$hotel);

plot(x = hotelBooking$hotel, main = "Número de reservas por tipo de hotel",xlab = "Tipo de hotel", ylab = "Cantidad de Reservas", col = c("royalblue", "seagreen"));

table(hotelBooking$hotel);
