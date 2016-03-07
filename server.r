library(shiny)
data("women")
#x <<- x +1
#y <<- 0


shinyServer(

function(input,output) {
	  
	output$scatter1 <- renderPlot({jj <- lm(women$weight~ women$height, data = women)
	plot(women$height,women$weight, xlab= 'Height(in)', ylab = 'Weight(lbs)', main = 'Womens weight(lbs) vs height(inchs)')
	abline(jj)
	abline(h= as.numeric(subset(women, women$height ==input$selection)[,2]), col = "red")
	abline(v = as.numeric(input$selection), col='blue')})
  output$text2 <- renderText(subset(women, women$height ==input$selection)[,2])
  output$text1 <- renderText( as.numeric(subset(women, women$height ==input$selection)[,2]) *0.45)

}  )

