library(robotstxt)
library(rvest)
url <- "https://open.spotify.com/playlist/5FgWbvqQgB9SlgUBVbJmu0?si=ae94dfddcc1d4373"
path = paths_allowed(url)
#html from website
web = read_html(url)
View(web)
song_name <- web %>% html_nodes(".song-title")%>% html_text()
View(song_name)
artist_name <- web%>%html_nodes(".artist-name") %>% html_text()
View(artist_name)
album-name <- web %>%html_nodes(".album-name") %>% html_text()
View(album-name)
song-rating-count<- web%>%html_nodes(".song-rating-count") %>% html_text()
View(song-rating-count)





#creating dataframe
songs_DB <- data.frame(Track Name=song_name,Artist Name=artist_name,Album=album-name,Track Pop=song-rating-count)
View(songs_DB)
#save
write.csv(songs_DB,"Ashwin_Playlist.csv")