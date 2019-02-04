const express = require('express');
const router = express.Router();
const Sequelize = require('sequelize');
const db = require('../models');

const MongoClient = require('mongodb').MongoClient;

const tour_events = require('../server_controllers/tour_events');
const tour_packages = require('../server_controllers/packages');
const home_functions = require('../server_controllers/home');

const url = "mongodb://localhost:27017/";


//const tourGuidesSeq= db.tour_guides;
router.get('/', function(req, res, next) {


  console.log("\n\n\nConnected to DB>>>>>",mongoDb);
  var tourEvents ={};
  console.log('At /');
  var data = [];


  home_functions.displayIndex( function(data,err)  {

    if(err)  {
      console.log("\n\n\nError returned from HOME>>>>>>>>",err);
      throw err;
    }
    else {
      //console.log("\n\n\ndata>>>>>>>>>",data);
      console.log("\n\n\nEvents>>>>>>>>",data['tourEvents'][0].event_id);
      console.log("\n\n\nPackages>>>>>>>>>>>",data['tourPackages'][0].id);
      console.log("\n\n\nGuides>>>>>>>>>>>",data['tourGuides'][0].id);
      res.render('index', {layout:'layout', tourEvents:data['tourEvents'], tourPackages:data['tourPackages'], tourGuides: data['tourGuides'] });

    }
  });

});



router.get('/migrate', (req,res,next) => {
    //Connect to mongoDb

    MongoClient.connect(url, function(err, db) {
      if(err) throw err;
      var dbo = db.db("guidhwbq_guideVilla");

        if(err) throw err;
        console.log("\n\n\nCreated table events>>>>>>>");
        tour_events.selectLimit(20).then( function(results)  {

            var insertion = [];
            results.forEach( function(result) {
                insertion.push(result.dataValues);
            });
            if(insertion.length) {
              dbo.collection("tour_events").insertMany(insertion, function(err,result) {

                if(err) {
                  throw err;
                  res.end("Error");
                }
                else {
                    console.log("\n\n\nInsertion sucessfull>>>>>>");
                    res.end("success");
                }
                db.close();

            })
          }
          }).catch(function(err) {
            console.log("\n\n\nerror fetching>>>>>>>>>>",err);
            db.close();
            res.end("error");
          });



    });
});


module.exports = router;
