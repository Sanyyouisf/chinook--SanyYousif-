select count (invoiceDate) As InvoicesIn2011
from Invoice
where  strftime('%Y', InvoiceDate) = '2011' 