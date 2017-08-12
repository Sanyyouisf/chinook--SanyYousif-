/*26-Provide a query that shows the top 3 best selling artists.*/

select (Artist.Name) As ArtistName,
			count(Artist.ArtistId) as NumberOfSales
from Artist
		join Album
			on Artist.ArtistId = Album.ArtistId 
		join Track
			on Track.AlbumId = Album.AlbumId
		join InvoiceLine
			on Track.TrackId = InvoiceLine.TrackId
Group By ArtistName
order By  NumberOfSales  desc
limit 3