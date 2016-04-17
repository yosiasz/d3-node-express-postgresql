var cors = require('cors'),
    express = require('express'),
    populationRouter = express.Router(),  
    pgp = require("pg-promise")(/*options*/),
    pg = require("pg");

var conString = "pg://postgres:password@your.postgres.server.ip/d3nodeexpresspostgresql";

var client = new pg.Client(conString);
client.connect();

populationRouter.all('*', cors());

var getPopulations = function(){
    
    populationRouter.route('/')    
    .get(function(req,res){
                var query = client.query("SELECT * from populations");
                query.on("row", function (row, result) {
                    result.addRow(row);
                });
                query.on("end", function (result) {
                    res.send(result.rows);
                });
            });    
    return populationRouter;
        
};


module.exports = {
  getPopulations: getPopulations
};