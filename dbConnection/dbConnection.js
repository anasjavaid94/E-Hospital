const mysql = require('mysql');

var db = mysql.createConnection({
    host: "127.0.0.1",
    user: "root",
    password: '',
    database: 'E-hospital'
})

module.exports = db