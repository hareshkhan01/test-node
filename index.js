const express=require("express")
const app=express()
const PORT=8000

app.get("/",(req,res)=>{
    res.json({message:"Hello Gold Flake Paglu!"})
})

app.listen(PORT,()=>{
    console.log("Server Running at PORT:"+PORT)
})