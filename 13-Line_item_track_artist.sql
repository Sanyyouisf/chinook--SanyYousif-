/*13-Provide a query that includes the purchased track name 
AND artist name with each invoice line item.*/

select 	InvoiceLine.InvoiceId,
			InvoiceLine.InvoiceLineId,
			(Track.Name) As TrackName,
			(Artist.Name) As ArtistName
from Track join Album
			on Track.AlbumId = Album.AlbumId
			Join Artist
				on Artist.ArtistId = Album.ArtistId
			Join InvoiceLine 
				on InvoiceLine.TrackId = Track.TrackId
				