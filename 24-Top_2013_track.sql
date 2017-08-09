/* 24-Provide a query that shows the most purchased track of 2013.*/

select  (Track.Name) As TrackName,
	Sum(InvoiceLine.Quantity) As NumberOfPurchase
from Track 
	Join InvoiceLine 
		on Track.TrackId = InvoiceLine.TrackId
	Join Invoice 
		on Invoice.InvoiceId = InvoiceLine.InvoiceId
where  strftime('%Y',InvoiceDate)='2013'
Group By Track.TrackId
	
