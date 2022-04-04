ui<-fluidPage(
  
  tags$style("@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
             HTML(".fa{font-size: 80px; color:#00d6d6; align-middle}"),
             HTML(".fa-fort-awesome{font-size: 100px; color:#00d6d6}"),
             HTML("#run1{color: #00d6d6}"),
             HTML("#run2{color: #00d6d6}"),
             HTML("#run3{color: #00d6d6}"),
             HTML("#run4{color: #00d6d6}"),
             HTML("#run5{color: #00d6d6}"),
             HTML("#run6{color: #00d6d6}"),
             HTML("#run7{color: #00d6d6}")
            ),
  
  uiOutput("SaviorOfFarthingham")
  
  )
