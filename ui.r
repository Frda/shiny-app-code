library(shiny)
data("women")

shinyUI(pageWithSidebar(
	headerPanel("Average weight for a given height(inchs) for Women"),
	sidebarPanel(

	  
	  p( tags$b('Read Me')),
 tags$body('
	    This application uses the Women Data set in R to display the average womens weight(lbs) given the height(inchs) from The
      Dropdown combobox below. This application also performs a calcuation which converts the selected weight in pounds (lbs) from the data 
set into Kilograms (Kg). There is also regression plot of Hight vs weight, with horizontal and vertical lines moving to locate the choosen data point
	   '),
	  
 tags$p(''),
 
 
 p( tags$b('Running application')),
 
 ('Select the Height from the drop down box to retrive values for the average weight') ,		
	
	selectInput(inputId = "selection","Height Selection (in)",
	            choices = list('58'='58','59'='59','60'='60','61'='61',
	                           '62'='62','63'='63','64'='64','65'='65',
	                           '66'='66','67' ='67','68'= '68','69' = '69',
	                           '70' = '70','71' = '71','72' = '72'),selected = 58)	),
	mainPanel(
	  
	  p(),
	  
	  p('weight pounds (lbs)'), textOutput('text2'),
	  
	  
	  p('weight Kilograms (Kg)'),textOutput('text1'),
	  
	  
	  
	  plotOutput('scatter1')
	  
	  
	  
	)
	
	))