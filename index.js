require("dotenv").config(); // Ensure you have the dotenv package installed

const Pool = require("pg").Pool;

const pool = new Pool({
    user: process.env.DB_USER, // replace with environment variable
    password: process.env.DB_PASSWORD, // replace with environment variable
    port: process.env.DB_PORT || 5432, // default to 5432 if not specified
    database: process.env.DB_NAME
})
pool.connect((err) => {
    if(err){
        console.error("Connection error", err.stack)
    } else {
        console.log("Connected")
    }
})

module.exports = pool;