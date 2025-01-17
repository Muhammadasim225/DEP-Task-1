const mysql=require('mysql');
const dotenv=require('dotenv').config();
const connection=mysql.createConnection({
    host     : process.env.HOST,
  user     : process.env.USER,
  password : process.env.PASSWORD,
  database : process.env.DATABASE,
  port     : process.env.DB_PORT

})
connection.connect((error)=>{
    if(error){
        throw error;
    }
    else{
        console.log("Connection successful");
    }
})
module.exports=connection;