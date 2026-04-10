const express = require("express");
const router = express.Router();

const db = require("../../db");

router.post("/createNewCustomer", (req, res) => {
  const {
    invoice_no,
    name,
    phone,
    address,
    right_sphere,
    right_cylinder,
    right_axis,
    right_add,
    right_prism,
    left_sphere,
    left_cylinder,
    left_axis,
    left_add,
    left_prism,
    product_type,
    product_quantity,
    product_price,
    lens_type,
    lens_quantity,
    lens_price,
    net_total,
    discount,
    payable_amount,
    advance,
    due,
    buying_date,
    delivery_date,
  } = req.body;
  const sql =
    "INSERT INTO `customer`(`invoice_no`,`name`, `phone`, `address`, `right_sphere`, `right_cylinder`, `right_axis`, `right_add`, `right_prism`, `left_sphere`, `left_cylinder`, `left_axis`, `left_add`, `left_prism`, `product_type`, `product_quantity`, `product_price`, `lens_type`, `lens_quantity`, `lens_price`, `net_total`, `discount`, `payable_amount`, `advance`, `due`, `buying_date`,`delivery_date`) VALUES (?,?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?,?,?,?)";
  db.query(
    sql,
    [
      invoice_no,
      name,
      phone,
      address,
      right_sphere,
      right_cylinder,
      right_axis,
      right_add,
      right_prism,
      left_sphere,
      left_cylinder,
      left_axis,
      left_add,
      left_prism,
      product_type,
      product_quantity,
      product_price,
      lens_type,
      lens_quantity,
      lens_price,
      net_total,
      discount,
      payable_amount,
      advance,
      due,
      buying_date,
      delivery_date,
    ],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).json({ error: "Database error" });
      } else {
        console.log(result);
        res.status(200).json({
          success: true,
          message: "New Customer sale created",
        });
      }
    }
  );
});

router.get("/getAllCustomerDetails", (req, res) => {
  const sql = "SELECT * FROM customer ORDER BY id DESC";
  db.query(sql, (err, results) => {
    if (err) {
      res.status(500).json({ success: false, error: "Database error" });
    } else {
      res.status(200).json({
        success: true,
        message: "All customer details",
        data: results,
      });
    }
  });
});

router.post("/searchOldCustomerDetails", (req, res) => {
  const { phone } = req.body;
  const sql = "SELECT * FROM customer WHERE phone = ?";

  db.query(sql, [phone], async (err, result) => {
    if (err) {
      res.status(400).send({
        success: false,
        message: "An error occurred while fetching the customer details",
      });
    } else if (result.length === 0) {
      res.status(404).send({
        success: false,
        message: "Customer not found",
      });
    } else {
      res.status(200).send({
        success: true,
        data: result,
        message: "Customer details fetched successfully",
      });
    }
  });
});

module.exports = router;
