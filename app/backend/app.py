from flask import Flask, jsonify
import mysql.connector
import os

app = Flask(__name__)

def get_connection():
    return mysql.connector.connect(
        host=os.getenv("DB_HOST", "localhost"),
        port=int(os.getenv("DB_PORT", "3306")),
        user=os.getenv("DB_USER", "cloudcart"),
        password=os.getenv("DB_PASSWORD", "CloudCart@123"),
        database=os.getenv("DB_NAME", "cloudcart")
    )

@app.route("/")
def home():
    return jsonify({
        "message": "Welcome to CloudCart API"
    })

@app.route("/health")
def health():
    return jsonify({
        "status": "UP"
    })

@app.route("/products")
def products():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("SELECT * FROM products")
    result = cursor.fetchall()

    cursor.close()
    conn.close()

    return jsonify(result)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
