library(UsingR)
data("mtcars")

#model<-lm(mpg~wt, data = mtcars)
#yPoint<<-1.5
#mtcars

shinyServer(  
    function(input, output) {
      model<-lm(mpg~wt, data = mtcars)
       output$chart <- renderPlot({      
          plot(mtcars$wt, mtcars$mpg,xlim = c(0,10), ylim = c(0,40), xlab = "Weight (1000 lbs)", ylab = "Miles per gallon")
         legend(7.6, 40, legend=c("Linear model"),col=c("red"), lty=c(1), lwd=c(2.4))
         legend(7.6, 35, legend=c("mtcars data", "Your value"),col=c("black", "red"),  pch=c(1,19))
         
         
         yPoint<-model$coefficients[1]+model$coefficients[2]*input$weight
         points(input$weight,yPoint, col="red", pch=19, lwd = 22)
          
          abline(model, col="red")
          
          #
         #yPoint<-1
          
          #print(input$weight)
          
          #points(input$weight,yPoint, col="red", pch=19)
          
          # mu <- input$mu      
          # lines(c(mu, mu), c(0, 200),col="red",lwd=5)      
          # mse <- mean((galton$child - mu)^2)      
          # text(63, 150, paste("mu = ", mu))      
          # text(63, 140, paste("MSE = ", round(mse, 2)))      
          })      }
)
