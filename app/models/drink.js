const mongoose = require('mongoose')

const drinkSchema = new mongoose.Schema({
    drinkType: {
        type: String,
        required: true
    },
    milk: {
        type: String,
        required: true
    },
    sugarLevel: {
        type: Number,
        required: true
    },
    size: {
        type: String,
        required: true
    }
}, {
    timestamps: true
})

module.exports = drinkSchema