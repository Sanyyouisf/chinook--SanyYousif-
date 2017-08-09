/*21-Provide a query that shows the count of customers 
assigned to each sales agent.*/
select 	(Employee.FirstName || ' '|| Employee.LastName) AS SalesAgentName,  
		count(Customer.CustomerId)As NumberOfCustomers
from 	Employee
		Join Customer
			on Employee.EmployeeId = Customer.SupportRepId
where 		Employee.Title = 'Sales Support Agent'
group By 	Employee.FirstName || ' '|| Employee.LastName

