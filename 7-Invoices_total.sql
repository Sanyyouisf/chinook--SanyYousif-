/*7- Provide a query that shows the Invoice Total, Customer name, 
Country and Sale Agent name for all invoices and customers.*/

select  Invoice.InvoiceId,
		Invoice.Total,
		(Customer.FirstName || ' '|| Customer.LastName) AS CustomerFullName,
		Customer.Country,
		(Employee.FirstName || ' '|| Employee.LastName) AS SaleAgentFullName
from Invoice 
		Join Customer
			on Invoice.CustomerId = Customer.CustomerId
		Join Employee 
			on Employee.EmployeeId = Customer.SupportRepId 
where Employee.Title = 'Sales Support Agent'
