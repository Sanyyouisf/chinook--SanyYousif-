/*15-Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resulant table.*/

select  	count(Track.TrackId) TotalNumberOfTracks,
				(Playlist.Name) As PlaylistName
from Track 
			Join PlaylistTrack
				on Track.TrackId = PlaylistTrack.TrackId
			Join Playlist 
				on Playlist.PlaylistId = PlaylistTrack.PlaylistId 
Group By Playlist.Name
				