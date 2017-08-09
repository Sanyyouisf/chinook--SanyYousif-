/* 20-1-Which sales agent made the most in sales over all?*/

select  salesagentname, 
			max(totalsales) As Max
from 	(select (Employee.FirstName || ' '|| Employee.LastName) AS SalesAgentName,  
				Count(Invoice.Total) As TotalSales
		from 	Employee
					Join Customer
						on Employee.EmployeeId = Customer.SupportRepId
					Join Invoice
						on Invoice.CustomerId = Customer.CustomerId
		where 	Employee.Title = 'Sales Support Agent' 
		group By (Employee.FirstName || ' '|| Employee.LastName) )
order by TotalSales desc