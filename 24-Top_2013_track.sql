/* 24-Provide a query that shows the most purchased track of 2013.*/

<<<<<<< HEAD
-- select  (Track.Name) As TrackName,
-- 			Sum(InvoiceLine.Quantity) As NumberOfPurchase
-- from Track 
-- 		Join InvoiceLine 
-- 			on Track.TrackId = InvoiceLine.TrackId
-- 		Join Invoice 
-- 			on Invoice.CustomerId = InvoiceLine.InvoiceId
-- where  strftime('%Y',InvoiceDate)='2013'
-- Group By Track.TrackId
-- order By NumberOfPurchase desc
	
select  (Track.Name)As TrackName,
		(Track.TrackId) As TrackId,
		count(Track.TrackId) As NumberOfpurchase		
from Track 
		Join InvoiceLine 
			on Track.TrackId = InvoiceLine.TrackId
		Join Invoice 
			on Invoice.CustomerId = InvoiceLine.InvoiceId
where  strftime('%Y',InvoiceDate)='2013'
Group By Track.TrackId
order By NumberOfpurchase desc
limit 1

