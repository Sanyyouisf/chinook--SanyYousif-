/*16-Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre.*/

Select 	(Track.Name) As TrackName,
	(Album.Title) As AlbumName,
	(MediaType.Name) As MediaType,
	(Genre.Name) As GenreName
from Track 
	join Album
		on Track.AlbumId = Album.AlbumId
	Join MediaType 
		on MediaType.MediaTypeId = Track.MediaTypeId
	Join Genre 
		on Genre.GenreId = Track.GenreId
				
