import pymysql
from flask import Flask
from flask_cors import CORS
from flaskext.mysql import MySQL
from datetime import timedelta
from flask import jsonify, request

#Library Password Encrypt
from  werkzeug.security import generate_password_hash, check_password_hash

#Library JWT
from flask_jwt_extended import create_access_token
from flask_jwt_extended import get_jwt_identity
from flask_jwt_extended import jwt_required
from flask_jwt_extended import JWTManager

app = Flask(__name__)
CORS(app)
mysql = MySQL(app)

#JWT Config
app.config["JWT_SECRET_KEY"] = "super-secret"  # Change this!
jwt = JWTManager(app)

#DB - localhost
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'plantInfo-db'
mysql.init_app(app)

# ----------------------------------------------------- #

# Login Users
@app.route("/login", methods=["POST"])
def login():
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)
    request_json = request.form

    if request.method == "POST":
        email = request_json["email"]
        password = request_json["password"]

        cursor.execute("SELECT * FROM users where email=%s", (email))
        data = cursor.fetchone()
        if data == None:
            message = {
                "error":True,
                "message":"Login failed. User not registered"
            }
            cursor.close()
        else:
            id = data["id"]
            name = data["username"]
            email1 = data["email"]
            truecheck = check_password_hash(data["password"], password)
            cursor.close()

            if (truecheck):
                access_token = create_access_token(identity=name)
                message = {
                        "error" : False,
                        "message": "success",
                        "loginResult" : {
                            "id" : id,
                            "name" : name,
                            "token" : access_token
                        }
                    }
            else:
                message = {
                    "error" : True,
                    "status":"Gagal Login! Password salah."
                }

    api_response = jsonify(message)
    api_response.status_code = 200
    return api_response

# POST - register Users
@app.route("/register", methods=["POST"])
def register():
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)
    request_json = request.form

    if request.method == "POST":
        name = request_json["name"]
        email = request_json["email"]
        password = request_json["password"]

        hash_passwd = generate_password_hash(password, method='sha256')

        SQLCommand = "INSERT INTO users(username, email, password) VALUES(%s, %s, %s)"
        Values = (name, email, hash_passwd)

        cursor.execute(SQLCommand, Values)
        sql_connect.commit()

        message = 	{
                    "error": False,
                    "message": "User Created"
                    }	

        api_response = jsonify(message)
        cursor.close()
        api_response.status_code = 200
        return api_response
    else:
        return NotFound()

# GET PATCH ID Users
@app.route("/user/<int:id>", methods=["PATCH", "GET"])
@jwt_required()
def users_id(id):
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)

    if request.method == "PATCH":
        request_json = request.form
        foto = request_json["foto"]

        SQLCommand = "UPDATE users SET foto=%s WHERE id=%s"
        Values = (foto, id)

        cursor.execute(SQLCommand, Values)
        sql_connect.commit()

        message = {
            "error":False,
            "message":"User Updated"
        }	

        api_response = jsonify(message)
        cursor.close()
        api_response.status_code = 200
        return api_response

    if request.method == "GET":
        cursor.execute("""SELECT * FROM users WHERE id =%s""", id)
        
        api_result = cursor.fetchall()

        result = {}

        for row in api_result:
            result["id"] = row["id"]
            result["username"] = row["username"]
            result["email"] = row["email"]
            result["password"] = row["password"]
            result["foto"] = row["foto"]

        message = {
                    "error": False,
                    "message": "success",
                    "userResult": result
                    }	
        cursor.close()
        api_response = jsonify(message)
        api_response.status_code = 200
        return api_response
    
    else:
        return NotFound()

# ----------------------------------------------------- #
# GET UserPlant
@app.route("/user/<int:id>/plant")
@jwt_required()
def get_UserPlant(id):
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)
    cursor.execute("SELECT * FROM userplant WHERE id=%s", id)

    api_result = cursor.fetchall()

    items = []
    for row in api_result:
        userplant_object = {
		    "id": row["id"],
            "location": row["location"],  
            "startDate": row["startDate"], 
	        "lastScheduledDate": row["lastScheduledDate"],
		    "nextScheduledDate": row["nextScheduledDate"],
		    "plantId": row["plantId"], 
            "UserId": row["UserId"]
        }
        items.append(userplant_object)

    result = {
        "error": False,
        "message": "success",
        "userPlant": items
    }
            
    api_response = jsonify(result)
    cursor.close()
    api_response.status_code = 200
    return api_response

# POST - UserPlant
@app.route("/userPlant", methods=["POST"])
@jwt_required()
def UserPlant_post():
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)
    request_json = request.form

    if request.method == "POST":
        location = request_json["location"]
        disease = request_json["disease"]
        startDate = request_json["startDate"]
        lastScheduledDate = request_json["lastScheduledDate"]
        nextScheduledDate = request_json["nextScheduledDate"]
        plantid = request_json["plantid"]
        userId = request_json["userId"]

        SQLCommand = "INSERT INTO userplant(location, disease, startDate, lastScheduledDate, nextScheduledDate, plantid, userId) VALUES(%s, %s, %s, %s, %s, %s, %s)"
        Values = (location, disease, startDate, lastScheduledDate, nextScheduledDate, plantid, userId)

        cursor.execute(SQLCommand, Values)
        sql_connect.commit()

        message = 	{
                        "error": False,
                        "message": "Plant Saved"
                    }	

        cursor.close()

        api_response = jsonify(message)
        api_response.status_code = 200
        return api_response
    else:
        return NotFound()

# GET PATCH DELETE ID UserPlant
@app.route("/userPlant/<int:id>", methods=["GET", "DELETE", "PATCH"])
@jwt_required()
def UserPlant_getpatchdel(id):
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)

    if request.method == "DELETE":
        cursor.execute("DELETE FROM userplant WHERE id =%s", (id,))
        sql_connect.commit()

        message = {
                    "error": False,
                    "message": "Plant Deleted"
                    }

        cursor.close()

        api_response = jsonify(message)
        api_response.status_code = 200
        return api_response

    if request.method == "GET":
        cursor.execute("""SELECT * FROM userplant WHERE id =%s""", id)
        
        api_result = cursor.fetchall()

        result = {}

        for row in api_result:
            result["id"] = row["id"]
            result["location"] = row["location"]
            result["disease"] = row["disease"]
            result["startDate"] = row["startDate"]
            result["lastScheduledDate"] = row["lastScheduledDate"]
            result["nextScheduledDate"] = row["nextScheduledDate"]
            result["plantId"] = row["plantId"]
            result["UserId"] = row["UserId"]

        message = {
                    "error": False,
                    "message": "success",
                    "userPlant": result
                    }	
        cursor.close()
        api_response = jsonify(message)
        api_response.status_code = 200
        return api_response
        
    if request.method == "PATCH":
        request_json = request.form

        location = request_json["location"]
        disease = request_json["disease"]
        startDate = request_json["startDate"]
        lastScheduledDate = request_json["lastScheduledDate"]
        nextScheduledDate = request_json["nextScheduledDate"]
        plantid = request_json["plantid"]
        userId = request_json["userId"]

        SQLCommand = "UPDATE userplant SET location=%s, disease=%s, startDate=%s, lastScheduledDate=%s, nextScheduledDate=%s, plantid=%s, userId=%s WHERE id=%s"
        Values = (location, disease, startDate, lastScheduledDate, nextScheduledDate, plantid, userId, id)

        cursor.execute(SQLCommand, Values)
        sql_connect.commit()

        message = {
            "error": False,
            "message":"User Updated"
        }	

        api_response = jsonify(message)
        cursor.close()
        api_response.status_code = 200
        return api_response

    else:
        return NotFound()

# ----------------------------------------------------- #
# GET Plant
@app.route("/plant")
def get_plant():
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)
    cursor.execute("SELECT * FROM plant")

    api_result = cursor.fetchall()

    items = []
    for row in api_result:
        disease_object = {
		    "id": row["id"],
            "slug": row["slug"],  
            "plantName": row["plantName"], 
	        "scientificName": row["scientificName"],
		    "description": row["description"],
		    "plantTips": row["plantTips"], 
            "wateringTips": row["wateringTips"], 
            "wateringFrequency": row["wateringFrequency"], 
            "temperature": row["temperature"], 
            "image": [row["image"]]
        }
        items.append(disease_object)

    result = {
        "error": False,
        "message": "success",
        "plantList": items
    }
            
    api_response = jsonify(result)
    cursor.close()
    api_response.status_code = 200
    return api_response

@app.route("/plant/<string:slug>")
def get_slug_plant(slug):
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)
    cursor.execute("SELECT * FROM plant WHERE slug =%s", slug)

    api_result = cursor.fetchall()

    result = {}

    for row in api_result:
        result["id"] = row["id"]
        result["slug"] = row["slug"]
        result["plantName"] = row["plantName"]
        result["scientificName"] = row["scientificName"]
        result["description"] = row["description"]
        result["plantTips"] = row["plantTips"]
        result["wateringTips"] = row["wateringTips"]
        result["wateringFrequency"] = row["wateringFrequency"]
        result["temperature"] = row["temperature"]
        result["image"] = [row["image"]]

    result_ = {
        "error": False,
        "message": "success",
        "plantResult": result
    }

    api_response = jsonify(result_)
    cursor.close()
    api_response.status_code = 200
    return api_response

# ----------------------------------------------------- #

# GET Disease
@app.route("/disease")
def get_disease():
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)
    cursor.execute("SELECT * FROM disease")

    api_result = cursor.fetchall()

    items = []
    for row in api_result:
        disease_object = {
		    "id": row["id"],
            "slug": row["slug"],  
            "plantName": row["plantName"], 
	        "diseaseName": row["diseaseName"],
		    "cause": row["cause"],
		    "care": row["care"], 
        }
        items.append(disease_object)

    result = {
        "error": False,
        "message": "success",
        "diseaseList": items
    }
            
    api_response = jsonify(result)
    cursor.close()
    api_response.status_code = 200
    return api_response

@app.route("/disease/<string:slug>")
def get_slug_disease(slug):
    sql_connect = mysql.connect()
    cursor = sql_connect.cursor(pymysql.cursors.DictCursor)
    cursor.execute("SELECT * FROM disease WHERE slug =%s", slug)

    api_result = cursor.fetchall()

    result = {}

    for row in api_result:
        result["id"] = row["id"]
        result["slug"] = row["slug"]
        result["plantName"] = row["plantName"]
        result["diseaseName"] = row["diseaseName"]
        result["cause"] = row["cause"]
        result["care"] = row["care"]

    result_ = {
        "error": False,
        "message": "success",
        "diseaseResult": result
    }

    api_response = jsonify(result_)
    cursor.close()
    api_response.status_code = 200
    return api_response

# ----------------------------------------------------- #

# Error Handler
@app.errorhandler(404)
def NotFound(error=None):
    message = {
        "status": 404,
        "NotFound": "Tidak ditemukan : " + request.url,
    }
    api_response = jsonify(message)
    api_response.status_code = 404
    return api_response

# ----------------------------------------------------- #

app.debug = True

if __name__ == "__main__":
    app.run(threaded=True)
