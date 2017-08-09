/*23-Which country's customers spent the most*/

select 	Invoice.BillingCountry,
			Count(Invoice.Total) As MaxTotalSales
from 	Employee
			Join Customer
				on Employee.EmployeeId = Customer.SupportRepId
			Join Invoice
				on Invoice.CustomerId = Customer.CustomerId
Group By 	Invoice.BillingCountry
order by 	MaxTotalSales desc
Limit 1