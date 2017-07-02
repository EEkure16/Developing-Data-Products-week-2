library(leaflet)
syracuseIcon <- makeIcon(
  iconUrl = "https://www.pinterest.com/pin/402016704218911841/",
  
)
syracuseLatLong <- data.frame(
  lat = c(43.0481, 43.0423, 43.0392, 43.0693),
  lng = c(-76.1474, -76.1393, -76.1351, -76.1727))


syracuseSites <- c(
  "<a href = 'http://www.syrgov.net/'>home.aspx</a>",
  "<a href = 'http://www.upstate.edu/'>hospital</a>",
  "<a href = 'https://www.syracuse.edu/'>academics<a/>",
  "<a href = 'https://www.destinyusa.com/'>events<a/>"
  
)
syracuseLatLong %>%
  
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = syracuseIcon, popup = syracuseSites)