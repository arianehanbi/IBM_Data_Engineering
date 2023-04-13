#### Cloudant query
# JSON document type

{
   "selector": {
      "_id": {
         "$gt": "2"
      }
   },
   "fields": [
      "_id",
      "price",
      "square_feet"
   ],
   "sort": [
      {
         "_id": "desc"
      }
   ]
}
