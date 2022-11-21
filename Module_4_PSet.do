/* 
Name - Utkarsh Dandanayak
Date - 11/20/2022
*/

cd "C:\Users\utkarshd\OneDrive - The University of Chicago\Desktop\Voltage Stata Training"

use star.dta, clear 

* First, we must create a new variable from our data, representing each student's test scores summed across all subjects:

generate total_score = read + math + listen + wordskill

* We will regress this total score variable against teachers' years of experience, and also regress total score against class size:

regress total_score teacher_experience

regress total_score class_size

*The results from these regressions are discussed and compared in the PDF. 

*We can also visualize the lines of best fit plotted alongside the data itself: 

graph twoway (lfit total_score teacher_experience) (scatter total_score teacher_experience)

graph twoway (lfit total_score class_size) (scatter total_score class_size)


