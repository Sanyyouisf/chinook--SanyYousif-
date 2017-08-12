/*25-Provide a query that shows the top 5 most purchased songs.*/

-- select (InvoiceLine.TrackId )As TrackId,
-- 			count(InvoiceLine.TrackId)As NumberOfTracks 
-- from  InvoiceLine 
-- 			Join Invoice 
-- 				on Invoice.InvoiceId = InvoiceLine.InvoiceId
-- Group By TrackId
-- order by NumberOfTracks desc
-- limit 5 

select  (Track.Name)As SongName,
		(Track.TrackId) As TrackId,
		count(Track.TrackId) As NumberOfpurchase		
from Track 
		Join InvoiceLine 
			on Track.TrackId = InvoiceLine.TrackId
		Join Invoice 
			on Invoice.CustomerId = InvoiceLine.InvoiceId
Group By Track.TrackId
order By NumberOfpurchase desc
limit 5