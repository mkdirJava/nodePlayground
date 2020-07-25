import express from "express";

const app = express();
const port = process.env.port || 8080;


//routing
app.get("/",(req,res)=>{
    console.log("TIME");
    res.send("HI There NONES");
})

app.listen(port,()=>{
    console.log(" Express service listening on port "+ port);
})