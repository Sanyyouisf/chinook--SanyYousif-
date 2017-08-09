/*14-Provide a query that shows the # of invoices per country
. HINT: GROUP BY*/

select 		count (BillingCountry)As NumberOfInvoices,
		BillingCountry
from 		Invoice
Group By 	(BillingCountry)

