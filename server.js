const express = require("express");
const app = express();
const pool = require("./index");
const cors = require("cors");
const fs = require('fs').promises;
const path = require("path");

//middleware
app.use(cors());
app.use(express.json()); //req.body

//Creating tables
async function createTables() {
    try {
        // Construct the path to the SQL file
        const sqlFilePath = path.join(__dirname, 'ehotel_db', 'create-tables.sql');

        // Read SQL from file
        const sqlQuery = await fs.readFile(sqlFilePath, { encoding: 'utf-8' });
        
        // Execute SQL script
        await pool.query(sqlQuery);
        console.log('Tables created successfully.');
    } catch (error) {
        console.error('Error executing table creation script:', error);
    }
}

// Inserting data
async function insertData() {
    try {
        // Construct the path to the SQL file for inserting data
        const sqlFilePath = path.join(__dirname, 'ehotel_db', 'insert-data.sql');

        // Read SQL from the file
        const sqlQuery = await fs.readFile(sqlFilePath, { encoding: 'utf-8' });

        // Split the SQL file into separate statements
        const sqlStatements = sqlQuery.split(/;\s*\n/);


        for (const statement of sqlStatements) {
            if (statement.length > 3) { // Avoid executing empty statements
                // Execute each SQL statement
                await pool.query(statement);
            }
        }

        console.log('Data inserted successfully.');
    } catch (error) {
        console.error('Error inserting data:', error);
    }
}

// Intégration des index
async function createIndexes() {
    try {
        const sqlFilePath = path.join(__dirname, 'ehotel_db', 'index.sql');
        const sqlQuery = await fs.readFile(sqlFilePath, { encoding: 'utf-8' });
        await pool.query(sqlQuery);
        console.log('Indexes created successfully.');
    } catch (error) {
        console.error('Error creating indexes:', error);
    }
}

// Intégration des triggers
async function createTriggers() {
    try {
        const sqlFilePath = path.join(__dirname, 'ehotel_db', 'trigger.sql');
        const sqlQuery = await fs.readFile(sqlFilePath, { encoding: 'utf-8' });
        await pool.query(sqlQuery);
        console.log('Triggers created successfully.');
    } catch (error) {
        console.error('Error creating triggers:', error);
    }
}

// Modifier setupDatabase pour inclure les index et les triggers
async function setupDatabase() {
    await createTables(); // Crée les tables
    await insertData(); // Insère les données
    await createIndexes(); // Crée les index
    await createTriggers(); // Crée les triggers
}

setupDatabase();

const port = process.env.PORT || 3002;
app.listen(port, () => {
    console.log(`server is up and listening on port ${port}`);
});

