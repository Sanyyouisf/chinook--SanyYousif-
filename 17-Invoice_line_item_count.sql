/*17-Provide a query that shows all Invoices 
but includes the # of invoice line items*/

select Invoice.*,
			Count(InvoiceLine.InvoiceLineId)As InvoiceLineNumber
from Invoice 
			join InvoiceLine
				on Invoice.InvoiceId = InvoiceLine.InvoiceId
Group By Invoice.InvoiceId

				