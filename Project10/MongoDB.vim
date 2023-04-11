MongoDB

# Connect to mongoDB server (using Terminal)
start_mongo
mongo -u root -p pw --authenticationDatabase admin local  # connect to mongoldb server
db.version()                                              # find the version of the server
exit                                                      # disconnect from mongoDB server


# Mongo shell
show dbs              # list databases
use my_db             # create/ use a database




#### CRUD operations
show collections      # list collections

# 1. Create: insert, insertOne, insertMany
db.createCollection("mycollection")                         # create collection
db.mycollection.insert({"color":"white","example":"milk"})  # inserts data into the collection


# 2. Read: find, findOne, findMany
db.mycollection.count()                  # count the number of documents in the collection
db.mycollection.find()                   # list all documents in the collection
db.mycollection.find().limit(3)
db.mycollection.find({“name”:”py”})
db.mycollection.find({},{“name”:1})      # list docs with only name field
db.mycollection.find({},{“name”:1})      # list docs without the name field


# 3. Update: replaceOne, replaceMany
db.mycollection.replaceOne()
db.mycollection.updateMany({what documents to find}, {$set: {what fields to set}})
db.mycollection.updateMany({},{$set:{“new_field”:”new_value”}})  # add a new field with a value


# 4. Delete: remove, deleteOne, deleteMany
db.mycollection.remove({})                         # delete all documents in the collection
db.mycollection.remove({“name”:”py”})              # delete py language documents
db.mycollection.deleteOne()





#### Index
db.mycollection.createIndex({“chosen_field”:1})    # create an index on “the chosen field”
db.mycollection.getIndexes()                       # get a list of indexes on the collection
db.mycollection.dropIndex({“chosen_field”:1})      # delete an index




#### Aggregation
$limit           # limit the number of documents printed in the output
$sort            # sort the documents based on the field in (1: ascending order, -1: descending order)
$group           # perform grouping operations along with operators: $sum, $avg, $min, $max
$match           # filter out the document to the matched filed’s value
$project         # change the shape of document, project out certain fields
$count           # count or assign the outcome to the new field
$merge           # takes the outcome from the previous stage, and stores it into a target collection

db.mycollection.aggregate([ {“$limit”:2} ])
db.mycollection.aggregate([ {“$sort”:{“field”:-1}} ])
db.mycollection.aggregate([ {“$sort”:{“field”:-1}},  {“$limit”:2} ])
db.mycollection.aggregate([ {“$group”: {“_id”: “$field1”,  “average”: {“$avg”. “$field2”} } } ])
db.mycollection.aggregate([
{
    "$group":{
        "_id":"$subject",
        "average":{"$avg":"$marks"}
        }
},
{
    "$sort":{"average":-1}
},
{
    "$limit":2
}
])






#### Mongo Client (Accessing MongoDB from Python)

python3 -m pip install pymongo

from pymongo import MongoClient
from bson.json_util import dumps

uri = "mongodb://USER:PASSWORD@uri/test"
client = MongoClient(uri)
campusDB = client.campusManagementDB
students = campusDB.students

student.insert_one()         # create document
student.find_one()           # read document
student.count_documents()
student.replace_one()        # update document
student.update_many()
student.delete_one()         # delete document

cursor = student.find()          # print read documents
print(dumps(cursor, indent=4))
