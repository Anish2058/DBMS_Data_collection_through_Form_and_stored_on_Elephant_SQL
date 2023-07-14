const express = require("express");
const { Pool }  = require("pg");
const app = express();// this is our app or instance of express
//postgres://sfntzxgm:V2nZ3_xEE85XBs6YbP-0K8kwVdXgc-Gz@john.db.elephantsql.com/sfntzxgm
const port=4000;
//API middlewares
app.use(express.urlencoded()); //decode the data send from form
app.use(express.json()); // accept the form in json format
app.use(express.static('public'));

const pool = new Pool({
    user:'sfntzxgm',
    host:'john.db.elephantsql.com',
    database:'sfntzxgm',
    password:'V2nZ3_xEE85XBs6YbP-0K8kwVdXgc-Gz',
    port: 5432,
});

//handle form submission
app.get('/',(req,res)=>{
    res.sendFile('/index.html',{'root':'.'})
});
app.post('/submit', (req, res) => {
    console.log(req.body);
    const { firstname,lastname,Roll,Address,Phone_no} = req.body;
    const query = 'INSERT INTO tbl_students (fname,lname,roll,address,Phone) VALUES ($1, $2, $3, $4,$5)';
  
    pool
      .query(query, [firstname,lastname,Roll,Address,Phone_no])
      .then(() => res.send('Data inserted successfully'))
      .catch((error) => res.send(error));
  });

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
  });
  