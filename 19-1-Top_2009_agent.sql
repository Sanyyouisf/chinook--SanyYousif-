/*19-Which sales agent made the most in sales in 2009?*/

select 	(Employee.FirstName || ' '|| Employee.LastName) AS SalesAgentName,  
	Count(Invoice.Total) As TotalSales
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
