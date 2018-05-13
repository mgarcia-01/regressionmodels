mydir <- getwd()
fileName <- "data/ravensData.rda"
filePath <- paste0(mydir,"/",fileName)

download.file("https://dl.dropboxusercontent.com/u/7710864/data/ravensData.rda"
              ,destfile= filePath
              ,method="curl")


load(filePath) 

head(ravensData)
