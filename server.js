const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");


//middleware
app.use(cors());
app.use(express.json());

//ROUTES

//create a dodo??
app.post("/todo", async (req, res) => {
    try{
      const { description} = req.body;
      const newTodo = await pool.query(
        "INSERT INTO Employee (description) VALUES($1) RETURNING *",
        {description}
        );

        res.json(newTodo.rows[0]);
    }catch(err){
        console.error(error.message);
    }
})

const port = process.env.PORT || 5001;
app.listen(port, () => console.log('Node server started using nodemon'));