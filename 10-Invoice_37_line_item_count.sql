/*10- Looking at the InvoiceLine table, 
provide a query that COUNTs the number of line items for Invoice ID 37.*/
select  count (InvoiceId) As  numberOfItemsInvoiceID37
from  	InvoiceLine
where 	InvoiceId = '37'