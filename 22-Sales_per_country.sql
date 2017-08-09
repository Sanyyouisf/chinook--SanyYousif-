/*22-Provide a query that shows the total sales per country.*/

select 	Invoice.BillingCountry,
			Count(Invoice.Total) As TotalSales
from 	Employee
			Join Customer
				on Employee.EmployeeId = Customer.SupportRepId
			Join Invoice
				on Invoice.CustomerId = Customer.CustomerId
Group By 	Invoice.BillingCountry





