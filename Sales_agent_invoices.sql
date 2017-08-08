select  Invoice.InvoiceId, 
			Invoice.InvoiceDate, 
			(Employee.FirstName || ' '|| Employee.LastName) AS SalesAgentFullName 			
from Customer 
			Join Employee 
				on Customer.SupportRepId = Employee.EmployeeId 
			join Invoice 
				on Invoice.CustomerId = Customer.CustomerId 
where Employee.Title = 'Sales Support Agent'	
