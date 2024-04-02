const Pool = require("pg").Pool;

const pool = new Pool({
    user: "postgres",
    password: "PosgresNzu24",
    host: "localhost",
    port: 5432,
    database: "ehotel-database"
});

module.exports = pool;