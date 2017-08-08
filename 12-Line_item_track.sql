/*12-Provide a query that includes the purchased track name with each invoice line item.*/

select 	Invoice.InvoiceId,
		(Track.Name) As PurchasedTrackName	
from 	InvoiceLine
			Join Track 
				on InvoiceLine.TrackId = Track.TrackId 
			Join Invoice 
				on Invoice.InvoiceId = InvoiceLine.InvoiceId
			