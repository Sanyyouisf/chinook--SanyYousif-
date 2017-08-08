/* 9-What are the respective total sales for each of those years?2009*/

select 	sum (Total) As TotalSaleIn2011
from 	Invoice
where  	strftime('%Y', InvoiceDate) = '2009' 
