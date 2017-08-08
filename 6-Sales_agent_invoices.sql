/*6- Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.*/

select  Invoice.InvoiceId, 
		Invoice.InvoiceDate, 
		(Employee.FirstName || ' '|| Employee.LastName) AS SalesAgentFullName 			
from Customer 
		Join Employee 
			on Customer.SupportRepId = Employee.EmployeeId 
		join Invoice 
			on Invoice.CustomerId = Customer.CustomerId 
where Employee.Title = 'Sales Support Agent'	
