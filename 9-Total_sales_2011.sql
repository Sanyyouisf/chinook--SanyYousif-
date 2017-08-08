/* What are the respective total sales for each of those years?2011*/

select 	sum (Total) As TotalSalesIn2011
from 	Invoice
where  	strftime('%Y', InvoiceDate) = '2011' 