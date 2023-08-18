const mongoose = require("mongoose");

const iotdata = new mongoose.Schema({
    humidity: {
        type: Number,
        default: 0,
    },
    temperature: {
        type: Number,
        default: 0,
    },
});

exports.iotdata = mongoose.model('iotdata', iotdata);