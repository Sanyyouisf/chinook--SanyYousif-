/* 20-2-Which sales agent made the most in sales over all?*/

select 	(Employee.FirstName || ' '|| Employee.LastName) AS SalesAgentName,  
			Count(Invoice.Total) As TotalSales
from 	Employee
			Join Customer
				on Employee.EmployeeId = Customer.SupportRepId
			Join Invoice
				on Invoice.CustomerId = Customer.CustomerId
where 		Employee.Title = 'Sales Support Agent' 
group By 	Employee.FirstName,
			Employee.LastName 
order By 	InvoiceDate desc
limit 1
