
packages <- c("tidyverse", "corrplot", "tidytext", "antiword", "data.table", "textreadr", "wordcloud", "reshape2")

loading_package <- function(packages){
  for (i in packages){
    if(require(i)){
      print(paste(i,"is loaded correctly"))
    } else {
           print(paste("trying to install", i))
           install.packages(i)
           if(require(i)){
                print(paste(i, "installed and loaded"))
           } else {
             print(paste("could not install", i))
      }}
  }
}

loading_package(packages)
