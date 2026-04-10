require("dotenv").config(); 

const mysql = require("mysql");

const db = mysql.createPool({
  connectionLimit: 100,
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASS || "",
  database: process.env.DB_NAME,
});


db.getConnection((err, connection) => {
  if (err) {
    console.error("❌ Database connection error:", err);
  } else {
    console.log("✅ Connected to MySQL database");
    connection.release();
  }
});

module.exports = db;