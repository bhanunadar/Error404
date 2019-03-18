const express = require('express');
const bodyParser = require("body-parser");
var mysql = require('mysql');
var app = express();
var global_user;
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "nothing"
  });
var fs = require('fs')
app.use(bodyParser.urlencoded({extended:true}));
app.use(express.static("public"));
app.set("view engine","ejs");

app.get('/',function(req,res){
    res.render('login')
})
app.get('/form',function(req,res){
    res.render('form');
})
app.post('/form',function(req,res){
    user=req.body.username;
    password=req.body.password;
    sql='Select * from chatbot.users where username="'+user+'"';
    console.log(sql);
    con.query(sql, function (err, result) {
            if (err) throw err;
            
            if(password==result[0].password)
            {
                global_user=user;
                res.render('form',{user:global_user});
            }
            else
            {
                res.render('404')
            }

    });   
})
app.post('/test',function(req,res){
    console.log(req.body.inputs);
    const Json2csvParser = require('json2csv').Parser;
    jsonData = {}
    for (var i = 0; i < req.body.inputs.length; i += 1) {
        jsonData[i] = req.body.inputs[i]; 
    }
    const json2csvParser = new Json2csvParser();
    const csv = json2csvParser.parse(jsonData);
     
    const fs = require('fs');
    
    fs.appendFile('survey_data.csv', csv, (err) => {
        if (err) throw err;
    });
    res.send("hello");
})
app.post('/save',function(req,res){
    form=req.body.input;
    console.log(form);
    sql="Select Count(*) from chatbot.forms_ where username='"+global_user+"'";
    
    con.query(sql,function(err,result){
        if (err) throw err;
        console.log(result[0]['Count(*)']);
        count=result[0]['Count(*)'];
        console.log("count "+count);
        if(count==undefined)
        {
            count=0;
        }
        sql="Insert into chatbot.forms_ (username,form_json,is_live) Values ('"+global_user+"','"+form+"','"+(count+1)+"')";
        con.query(sql, function (err, result) {
            if (err) throw err;
                console.log("Saved!! save");
            });
        res.send("hello world");
    });
});
app.get('/forms/:userna/:num',function(req,res){
    var username=req.params.userna;
    var form=req.params.num;
    sql='Select * from chatbot.forms_ where username="'+username+'" and is_live='+form;
    con.query(sql, function (err, result) {
        if (err) throw err;
            console.log(result[0].form_json);
            ans=result[0].form_json;
            ans=ans.substr(1,ans.length-2);
            res.render('chat',{convo:ans});
    });
});
app.get("/exit",function(req,res,next){
    res.render("test");
});
app.listen(3000,function(){
    console.log("Server started");
});
