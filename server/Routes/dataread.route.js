const express = require("express");
const router = express.Router();
const iotApi = process.env.IOT_URl;

// importing the models
const { iotdata } = require("../models/iotdata.model");

router.post("/postdata", async (req, res) => {
  await fetch(iotApi)
    .then((response) => response.json())
    .then((data) => {
      let filterData = data.feeds[0];
      let newData = new iotdata({
        temperature: filterData.field3,
        humidity: filterData.field4,
      });
      newData = newData.save().then(() => {
        res.send({ message: "Data send" });
      });
    })
    .catch((error) => {
      res.send(error);
    });
});

router.get("/", async (req, res) => {
  try {
    let data = await iotdata.findOne({ humidity: 79 });
    const mainData = {
      id: data.id,
      temperature: data.temperature,
      humidity: data.humidity,
    };
    console.log(mainData);
    return res.send(mainData);
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
});

module.exports = router;
