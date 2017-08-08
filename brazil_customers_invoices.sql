select 	(Customer.FirstName || ' '|| Customer.LastName) AS CustomersFullName, 
			Invoice.InvoiceId,
			Invoice.InvoiceDate,
			Invoice.BillingCountry
from Invoice 
			join Customer
				on Invoice.CustomerId = Customer.CustomerId
where Customer.Country = 'Brazil'
