const mysql = require('mysql');
require('dotenv').config();
const fs = require('fs');

const dbConfig = {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
    port: process.env.DB_PORT,
    ssl: {
        ca: fs.readFileSync('./DigiCertGlobalRootCA.crt.pem'), // Path to CA certificate provided by Azure
        // cert: fs.readFileSync('./client-cert.pem'), // Path to client certificate (if required)
        // key: fs.readFileSync('./client-key.pem') // Path to client private key (if required)
    }
};

const connection = mysql.createConnection(dbConfig);

connection.connect((err) => {
    if (err) {
        console.error('Database connection failed: ', err);
        return;
    }
    console.log('Connected to the database!');
});

module.exports = connection; 

