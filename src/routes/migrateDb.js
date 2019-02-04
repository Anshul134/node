//maps to URLs like migrate/create | migrate/sendData

const express = require('express');
const Sequelize = require('sequelize');
const router = express.Router();
const db = require('../models');

const MongoClient = require('mongodb').MongoClient;

const tour_events = require('../server_controllers/tour_events');
const tour_packages = require('../server_controllers/packages');
const home_functions = require('../server_controllers/home');

const url = "mongodb://localhost:27017/";

router.get('/create', function(req,res,next)  {
  MongoClient.connect(url, function(err, db)  {
    if(err) {
      console.log('\n\n\nError connecting to DB>>>>');
      throw err;
      next("Error");
    }
    else {
      const dbo = db.db("guidhwbq_guideVilla");
      dbo.createCollection("tour_guides",function( err, result)  {
        if(err)  {
          console.log("\n\n\nError creating table Guides>>>>",err);
          throw err;
          next("error");
        }
        else {
          console.log("\nCreated Guides table>>>>>>");
          dbo.collection("tour_guides").createIndex( {
            "event_id":1
          }, {
            unique:true
          });
        }
      });

      dbo.createCollection("packages",function( err, result)  {
        if(err)  {
          console.log("\n\n\nError creating table Packages>>>>",err);
          throw err;
          next("error");
        }
        else {
          console.log("\nCreated Packages table>>>>>>");
          dbo.collection("packages").createIndex( {
            "id":1
          }, {
            unique:true
          });
        }
      })

      dbo.createCollection("tour_events",function( err, result)  {
        if(err)  {
          console.log("\n\n\nError creating table tour_events>>>>",err);
          throw err;
          next("error");
        }
        else {
          console.log("\nCreated tour_events table>>>>>>");
          dbo.collection("tour_events").createIndex( {
            "event_id":1
          }, {
            unique:true
          });
        }
      })
    }

  });
});

module.exports = router;
