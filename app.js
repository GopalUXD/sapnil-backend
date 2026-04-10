const express = require("express");
const bodyParser = require("body-parser");
const db = require("./db");
const jwt = require("jsonwebtoken");
const JWT_SECRET = "secret";
var cors = require("cors");
require("dotenv").config();

const app = express();
app.use(cors());
const port = process.env.PORT || 5001;

app.use(
  bodyParser.urlencoded({
    extended: false,
  })
);
app.use(bodyParser.json());
app.use(express.static("public"));

const userRoute = require("./server/routes/userRoute");
app.use("/user", userRoute);

const customerRoute = require("./server/routes/customerRoute");
app.use("/customer", customerRoute);

const authRoute = require("./server/routes/authRoute");
app.use("/auth", authRoute);

app.get("/status", (req, res) => {
  res.json({
    status: "Success",
    message: "DB Connection OK",
  });
});

// app.listen();
app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});
