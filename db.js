const mysql = require('mysql');
require('dotenv').config()

const wrap = require('./helpers/logger')

const dbIndex = process.argv.indexOf('-dbname');
let databaseName;

if (dbIndex > -1) {
    databaseName = process.argv[dbIndex + 1];
}
const connection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: databaseName || process.env.DATABASE,
    port: process.env.PORT,
    dateStrings: true,
});

connection.connect(function (err) {
    if (err) {
        wrap.error(`Connection Error: ${err.message}`);
        connection.end()
    }
    else {
        wrap.info("connection created with Mysql successfully");
    }
});

module.exports = connection;