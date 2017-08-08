/*2-Provide a query only showing the Customers from Brazil.*/

Select  (FirstName || ' '|| LastName) AS CustomersFromBrazil 
from 	Customer
where 	Country = 'Brazil' 