select count (invoiceDate) As InvoicesIn2009
from Invoice
where  strftime('%Y', InvoiceDate) = '2009' 
