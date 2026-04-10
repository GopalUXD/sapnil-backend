const express = require("express");
const router = express.Router();

const db = require("../../db");

router.get("/getAllUser", (req, res) => {
  const sql = "SELECT * FROM user";
  db.query(sql, (err, results) => {
    if (err) {
      res.status(500).json({ error: "Database error" });
    } else {
      res.json(results);
    }
  });
});

router.post("/createUser", (req, res) => {
  const { first_name, last_name, email, phone, comments, status } = req.body;
  const sql =
    "INSERT INTO `user`(`first_name`, `last_name`, `email`, `phone`, `comments`, `status`) VALUES (?, ?, ?, ?, ?, ?)";
  db.query(
    sql,
    [first_name, last_name, email, phone, comments, status],
    (err, result) => {
      if (err) {
        res.status(500).json({ error: "Database error" });
      } else {
        res.status(200).json({
          success: true,
          message: "User created",
        });
      }
    }
  );
});

router.get("/getUser/:id", (req, res) => {
  const { id } = req.params;
  const sql = "SELECT * FROM user WHERE id = ?";
  db.query(sql, [id], (err, result) => {
    if (err) {
      res.status(500).json({ error: "Database error" });
    } else if (result.length === 0) {
      res.status(404).json({ error: "User not found" });
    } else {
      res.json(result[0]);
    }
  });
});

router.put("/updateUser/:id", (req, res) => {
  const { id } = req.params;
  const { first_name, last_name, email, phone, comments, status } = req.body;
  const sql =
    "UPDATE user SET first_name = ?, last_name=?, email = ?, phone = ?,comments = ?, status = ?  WHERE id = ?";
  db.query(
    sql,
    [first_name, last_name, email, phone, comments, status, id],
    (err, result) => {
      if (err) {
        res.status(500).json({ error: "Database error" });
      } else if (result.affectedRows === 0) {
        res.status(404).json({ success: false, message: "User not found" });
      } else {
        // res.json({
        //   success: true,
        //   message: "User updated successfully",
        //   body: result,
        // });

        const selectSql = "SELECT * FROM user WHERE id = ?";
        db.query(selectSql, [id], (err, updatedResult) => {
          if (err) {
            res
              .status(500)
              .json({ error: "Database error while fetching updated data" });
          } else {
            res.json({
              success: true,
              message: "User updated successfully",
              updatedUser: updatedResult[0],
            });
          }
        });
      }
    }
  );
});

router.delete("/deleteUser/:id", (req, res) => {
  const { id } = req.params;
  const sql = "DELETE FROM user WHERE id = ?";
  db.query(sql, [id], (err, result) => {
    if (err) {
      res.status(500).json({ error: "Database error" });
    } else if (result.affectedRows === 0) {
      res.status(404).json({ success: false, message: "User not found" });
    } else {
      res.status(200).json({ message: "User deleted", success: true });
    }
  });
});

module.exports = router;
