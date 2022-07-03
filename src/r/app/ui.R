ui <- fillPage(
  title='my application'
  ,column(12,style='background-color:#ffffff;height:100%;'
          ,column(2, br(),br(), sliderInput('id','id',1,10,3,1,ticks = F))
          ,column(10,br(),br(), plotOutput('plt',height=600)))
)