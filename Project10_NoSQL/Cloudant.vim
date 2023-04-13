#### Cloudant query
# JSON document type

# fetch all documents
{
  "selector": {}
}



# query  
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
