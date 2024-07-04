const express = require('express')
const app = express()
const dotenv=require('dotenv').config();
const bodyParser=require('body-parser');
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
app.set("view engine", "ejs");
app.use(express.static( __dirname + '/public'));
app.use(express.static( __dirname + '/views'));
const connection=require('./config/db');


app.get('/',(req,res)=>{
    res.redirect("add-product.html");
})

app.get('/product/display',(req,res)=>{
    connection.query("select * from products",(err,rows)=>{
        if(err){
            console.log(err);
        }
        else{
            res.render("read.ejs",{rows});
        }
      
    })
})

app.post('/product/create',(req,res)=>{
    const name=req.body.name;
    const description=req.body.description;
    const price=req.body.price;
    const category=req.body.category;


    try {
        connection.query(
          "INSERT into products (name,description,price,category) values(?,?,?,?)",  
          [name,description,price,category],
          function (err, result) {
            if (err) {
              console.log(err);
            } else {
            //   res.json({ result });
              res.redirect("/product/display");  //3. Redirect user to the new page
            }
          }
        );
      }
  
   catch (err) {
    // res.send(err);
    console.log(err);

  }

    // res.redirect("/create.html");
})


app.get('/product/edit',(req,res)=>{


    const updateQuery="select * from products where id=?";
        connection.query(updateQuery,[req.query.id],  function (err, result) {
            if (err) {
              console.log(err);
            } else {
               const rest=JSON.parse(JSON.stringify(result[0]));
                console.log(rest);
                res.render("edit.ejs",{rest});

            //   res.json({ result });
            }
          }) 

    // try {
        // connection.query(





})




app.get('/product/delete',(req,res)=>{
    const deleteQuery="delete from products where id =?";


   
        connection.query(deleteQuery,[req.query.id],  function (err, result) {
            if (err) {
              console.log(err);
            } else {
            //   res.json({ result });
              res.redirect("/product/display"); 
            }
          }) 
      
    



})




app.post('/product/final-update', (req, res) => {
    const name = req.body.name;
    const description = req.body.description;
    const price = req.body.price;
    const category = req.body.category;
    const id = req.body.id;

    try {
        const updateQuery = "UPDATE products SET name=?, description=?, price=?, category=? WHERE id=?";
        connection.query(updateQuery, [name, description, price, category, id], (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.redirect("/product/display");
            }
        });
    } catch (err) {
        console.log(err);
    }
});


// })
const port=process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`http://localhost:${port}`)
})