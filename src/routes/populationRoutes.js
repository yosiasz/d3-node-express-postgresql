var cors = require('cors'),
    express = require('express'),
    populationRouter = express.Router(),
    pgp = require("pg-promise")(/*options*/);

var conString = "pg://postgres:password@your.postgres.server.ip/d3nodeexpresspostgresql";
var db = pgp(conString);

populationRouter.all('*', cors());

var getPopulations = function () {

    populationRouter.route('/')
        .get(function (req, res) {
            db.any("SELECT * from populations")
                .then(function (data) {
                    res.send(data);
                })
                .catch(function (error) {
                    // you should handle errors also ;)
                });
        });
    return populationRouter;

};

module.exports = {
  getPopulations: getPopulations
};
