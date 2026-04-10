const express = require("express");
const router = express.Router();
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken"); // joi validation
const db = require("../../db");
const Joi = require("joi");
const JWT_SECRET = "secret";

router.post("/login", (req, res) => {
  const { username, password } = req.body;
  sql = "SELECT * FROM admin WHERE username= ? AND password= ?";
  db.query(sql, [username, password], async (err, result) => {
    if (err) {
      res.status(500).json({
        success: false,
        message: "Server Error",
      });
    } else {
      console.log(result)
      if (result.length === 0) {
        res.status(400).send({
          success: false,
          message: "Username or Password does't match",
        });
      } else {
        const user = result[0];
        console.log(user)

        const token = jwt.sign(
          { userId: user.id, username: user.username },
          JWT_SECRET,
          {
            expiresIn: "1h",
          }
        );
        res.send({
          success: true,
          message: "Login Successfully",
          token,
        });
      }
    }
  });
});

module.exports = router;
