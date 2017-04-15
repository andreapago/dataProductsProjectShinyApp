shinyUI(pageWithSidebar(  
   headerPanel("Application for the Course Developing Data Products - Course Project: Shiny Application and Reproducible Pitch"),  
   sidebarPanel(    
     sliderInput('weight', 'Set the slider to the weight of your car in 1000 lbs',value = 2.500, min = 0, max = 10.000, step = 0.100)  ), 
   mainPanel( 
     h2("How to find the efficiency of your car?"),
h3('Documentation/Instructions:'),

h4("Based on the relationship found between the weight and miles per gallon (mpg) provided in the R mtcars data set,
                it is possible to estimate the fuel consumption of your own car. The value estimated is provided with a 
                simple linear model considering just the relationship between weight (predictor) and fuel efficiency (response)."),

h4("You just need to insert the weight in 1000 lbs by using the slider on the left.
                Please note that the prediction is mostly significant in the range 1500-5500 lbs.") ,
plotOutput('chart')
)))
