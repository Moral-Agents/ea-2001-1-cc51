# ¿Cuándo se producen las temporadas de reservas: alta, media y baja?

## Leer el dataset y analizarlo

hotelBooking <- read.csv("../data/hotel_bookings_clean.csv", header = TRUE, stringsAsFactors = FALSE)
str(hotelBooking)
summary(hotelBooking)

## Vemos si la columna que necesitamos tiene valores NA

hotelBooking$arrival_date_month[is.na(hotelBooking$arrival_date_month) == TRUE]

## Ver cuántas reservas se hacen en cada mes

table(hotelBooking$arrival_date_month)

## Crear una tabla del número de reservas por mes

hotelBookingMonthdf <- data.frame(Month = table(hotelBooking$arrival_date_month))

## Categorizarlos por nivel (alta, media y baja)

hotelBookingMonthdf$Month.nivel <- cut(hotelBookingMonthdf$Month.Freq, breaks = 3, labels = c("baja", "media", "alta"))

## Ordenarlos descendentemente

hotelBookingMonthdf <- hotelBookingMonthdf[order(hotelBookingMonthdf$Month.Freq, decreasing = TRUE), ]

## Gráfico de barras del número de reservas por mes

library("ggplot2")

ggplot(data = hotelBookingMonthdf, aes(x = reorder(Month.Var1, Month.Freq), y = Month.Freq, fill = Month.nivel)) + geom_bar(stat = "identity") + 
  ggtitle("Número de reservas por los meses del año, con su respectivo nivel") + 
  theme(plot.title = element_text(size = rel(2), face = "bold", lineheight = 1.5)) + 
  labs(x = "Meses", y = "Número de reservas") + 
  theme(axis.title = element_text(face = "bold", size = rel(1.5)))

# (OPCIONAL) Gráfico circular del porcentaje de los niveles

ggplot(data = hotelBookingMonthdf, aes(x = "", y = Month.Freq, fill = Month.nivel)) + geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) + theme_void()
