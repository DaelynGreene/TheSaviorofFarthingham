library(shiny)
library(shinyWidgets)

BackstoryText1<-"You are journeying from a neighboring kingdom at the urging of your sister's last letter."
BackstoryText2<-"Before she died, she wrote you, pleading for you to come to Farthingham and overthrow the evil ruler Henry Shelburton."
BackstoryText3<-"This is your story."

TitleWords<-"The Savior of Farthingham"

if(file.exists("PlayerSaveData.csv")){
  PlayerSaveData <- read.csv("PlayerSaveData.csv")
  colnames(PlayerSaveData)[1] <- "Name"
} else {
  PlayerSaveData <- data.frame(seq(0,0,length.out = 60))
}
