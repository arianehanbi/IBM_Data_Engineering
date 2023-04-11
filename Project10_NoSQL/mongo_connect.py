from pymongo import MongoClient


user = 'root'
password = 'PASSWORD'
host='localhost'

#create the connection url
connecturl = "mongodb://{}:{}@{}:27017/?authSource=admin".format(user, password, host)



# connect to mongodb server
print("Connecting to mongodb server")
connection = MongoClient(connecturl)

# get database list
print("Getting list of databases")
dbs = connection.list_database_names()
print(dfs)

# select the 'training' database 
db = connection.training

# select the 'python' collection 
collection = db.python

# create a sample document
doc = {"lab":"Accessing mongodb using python", "Subject":"No SQL Databases"}

# insert a sample document
print("Inserting a document into collection.")
db.collection.insert_one(doc)

# query for all documents in 'training' database and 'python' collection
docs = db.collection.find()
print(docs)

# close the server connecton
connection.close()
