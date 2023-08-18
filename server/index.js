const express = require("express");
const cors = require("cors");
const app = express();
const ejs = require("ejs");
const mongoose = require("mongoose");
require("dotenv/config");

//middleware
app.use(cors());
app.options('*', cors())
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.set("view engine", "ejs");

//Define Routes
const dataRoutes= require('./Routes/dataread.route');

// Define the api url
const api = process.env.API_URL;
const PORT = process.env.PORT;
var ip = "http://127.0.0.1";

// Database
mongoose.connect(process.env.DB_CONNECTION_STRING, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})
  .then(() => {
  console.log('Database is connected ...')
  })
.catch((err)=> {
  console.log(err);
})

app.get("/", (req, res) => {
  res.send({ message: "Welcome to fresp" });
});

app.use(`${api}/data`,dataRoutes);

app.listen(PORT, () => {
  console.log(`Server is running on port ${ip}:${PORT}`);
});