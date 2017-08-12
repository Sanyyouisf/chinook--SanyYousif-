/*19-1-Which sales agent made the most in sales in 2009?*/

select 	(Employee.FirstName || ' '|| Employee.LastName) AS SalesAgentName,  
<<<<<<< HEAD
			Sum(Invoice.Total) As TotalSales
=======
	Count(Invoice.Total) As TotalSales
>>>>>>> 056a238475b894fa75279ea92cfb627d0fb25230
from 	Employee
		Join Customer
			on Employee.EmployeeId = Customer.SupportRepId
		Join Invoice
			on Invoice.CustomerId = Customer.CustomerId
where 		Employee.Title = 'Sales Support Agent' and 
		strftime('%Y', InvoiceDate) = '2009' 
group By 	Employee.FirstName,
		Employee.LastName
order By 	InvoiceDate asc
limit 1
