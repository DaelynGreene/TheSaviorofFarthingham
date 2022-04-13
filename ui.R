ui<-fluidPage(
  
  tags$style("@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
             HTML(".fa{font-size: 60px; color:#00d6d6; align-middle}"),
             HTML("#ShopOption1{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#ShopOption2{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#ShopOption3{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#ShopOption4{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#ShopOption5{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#ShopOption6{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#ShopOption7{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}")
            ),
  
  uiOutput("SaviorOfFarthingham"),
  
  textOutput("title")
  
  )
