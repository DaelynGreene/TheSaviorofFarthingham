ui<-fluidPage(
  
  tags$style("@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
             HTML(".fa{font-size: 60px; color:#00d6d6; align-middle}"),
             HTML("#AlchemistWord{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#FarrierWord{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#TavernWord{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#TraderWord{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#BackToTown1{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#BackToTown2{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#BackToTown3{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#BackToTown4{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#GoToShopping{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#GoToExploring{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#GoToTraining{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#GoToHealing{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#GoToBanking{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#AlchemistReset{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#FarrierReset{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#TavernReset{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
             HTML("#TraderReset{color: #ff8200; font-family: papyrus; font-weight: bolder; font-size: 30px; border:none}"),
            ),
  
  textOutput("DateTime"),
  
  uiOutput("SaviorOfFarthingham")
  
  )
