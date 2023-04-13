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




#### cURL (Client URL: command line tool)
# Cloudant DBs have an HTTP API


# To retrieve a web page
curl url_webpage


# To create a variable for Cloudant's URL
export URL=url_webpage


# To create an alias
alias acurl="curl -sgH 'Content-type: application/json'"

- s: makes your request slient (you won't see any progress or error message)
- g: disables the URL globbing parser
- H: allows you to specify the content-type header


# To test connectivity
acurl $URL/


# To view a list of all DBs
acurl $URL/_all_dbs | python -m json.tool
acurl $URL/_all_dbs | jq
acurl $URL/_all_dbs


# To view the details for a single DB
acurl $URL/db_name | python -m json.tool
acurl $URL/db_name | jq


# To view  the documents in a DB
acurl $URL/db_name/_all_docs?include_docs=True

- include_docs=True: to retrieve the bodies of the documnets too


# To retreive a single document
acurl $URL/db_name/document_id








