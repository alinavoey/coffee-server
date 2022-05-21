const mongoose = require('mongoose')
const drinkSchema = require('./drink')

const orderSchema = new mongoose.Schema({
    price: {
        type: Number,
        required: true
    }, 
    name: {
        type: String,
        required: true
    },
    email: {
        type: String,
        required: true
    }, 
    drinks: [drinkSchema],
    owner: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'User',
        required: true
    }
}, {
    timestamps: true
})

module.exports = mongoose.model('Order', orderSchema)