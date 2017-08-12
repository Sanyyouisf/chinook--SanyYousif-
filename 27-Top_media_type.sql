/*27-Provide a query that shows the most purchased Media Type.*/
select  (MediaType.Name)As MediaTypeName,
		count(MediaType.MediaTypeId)As NumberOfPurchase
from MediaType
		join Track
			on MediaType.MediaTypeId= Track.MediaTypeId
		join InvoiceLine
			on InvoiceLine.TrackId= Track.TrackId		
Group by MediaTypeName
order by 2 desc
limit 1
