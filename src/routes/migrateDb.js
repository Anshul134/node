//maps to URLs like migrate/create | migrate/sendData

const express = require('express');
const Sequelize = require('sequelize');
const router = express.Router();
const db = require('../models');

const MongoClient = require('mongodb').MongoClient;

//FILE CONTAINING ALL THE STRING VALUES
const APP_DATA = require('../server_controllers/appDataObject');


const tour_events = require('../server_controllers/tour_events');
const tour_packages = require('../server_controllers/packages');
const home_functions = require('../server_controllers/home');

const url = "mongodb://localhost:27017/";

const APP_ROUTES = APP_DATA['APP_ROUTES'];
const MIGRATE_ROUTES = APP_ROUTES['DB_MIGRATE']; //   /migrate
const DB_TABLES = APP_DATA['DB_TABLES'];

router.get(MIGRATE_ROUTES['MIGRATE_CREATE_TBL'], function(req,res,next)  { // migrate/create route
  MongoClient.connect(url, function(err, db)  {
    var message="";
    if(err) {
      console.log('\n\n\nError connecting to DB>>>>');
      throw err;
      next("Error");
    }
    else {
      const dbo = db.db(APP_DATA['APP_DB']['MAIN_DB']);
      dbo.createCollection(DB_TABLES['GUIDE_TABLE'], function( err, result)  {
        if(err)  {
          console.log("\n\n\nError creating table Guides>>>>",err);
          throw err;
          next("error");
        }
        else {
          console.log("\nCreated Guides table>>>>>>");
          dbo.collection(DB_TABLES['GUIDE_TABLE']).createIndex( {
            "id":1
          }, {
            unique:true
          });
          message += "Guides table, ";
        }
      });

      dbo.createCollection(DB_TABLES['PACKAGES_TABLE'] ,function( err, result)  {
        if(err)  {
          console.log("\n\n\nError creating table Packages>>>>",err);
          throw err;
          next("error");
        }
        else {
          message += "Packages table, ";
          console.log("\nCreated Packages table>>>>>>");
          dbo.collection(DB_TABLES['PACKAGES_TABLE']).createIndex( {
            "id":1
          }, {
            unique:true
          });
        }
      })

      dbo.createCollection(DB_TABLES['EVENT_TABLE'] ,function( err, result)  {
        if(err)  {
          console.log("\n\n\nError creating table tour_events>>>>",err);
          throw err;
          next("error");
        }
        else {
          message += "events table created ";
          console.log("\nCreated tour_events table>>>>>>");
          dbo.collection(DB_TABLES['EVENT_TABLE'] ).createIndex( {
            "event_id":1
          }, {
            unique:true
          });
          res.end(message);
        }
      })
    }

  });
});

router.get(MIGRATE_ROUTES['MIGRATE_TRANSFER_EVENTS'], function(req, res, next) {
    MongoClient.connect(url, function(err, db)  {
      if(err) {
        console.log("Error connecting to DB");
        throw err;
      }
      else {
        const dbo = db.db(APP_DATA['APP_DB']['MAIN_DB']);
        var insertionObj = [];
        tour_events.selectAll().then( (results) => {
            results.forEach( (result)=> {
              let count=0;
              dbo.collection(DB_TABLES['EVENT_TABLE']).insertOne(result.dataValues).then ( (insertRes) =>{
                console.log(`Inserted ${count} records `);
              }).catch( (err) => {
                  console.log("\nError in insertion>>>", err);
              });

              res.end(`Inserted ${count} records `);
            });
        }).catch( (err) => {
          console.log("\n\n\nError fetching records >>>>>", err);
        });
      }
    })
});

router.get(MIGRATE_ROUTES['MIGRATE_TRANSFER_GUIDE'], function(req, res, next) {
    MongoClient.connect(url, function(err, db)  {
      if(err) {
        console.log("Error connecting to DB");
        throw err;
      }
      else {
        const dbo = db.db(APP_DATA['APP_DB']['MAIN_DB']);
        var insertionObj = [];
        tour_guides.selectAll().then( (results) => {
            results.forEach( (result)=> {
              let count=0;
              dbo.collection(DB_TABLES['GUIDE_TABLE']).insertOne(result.dataValues).then ( (insertRes) =>{
                count++;
              }).catch( (err) => {
                console.log("\nError in insertion>>>", err);
              });
              console.log(`Inserted records `);
              //res.end(`Inserted ${count} records `);
            });
        }).catch( (err) => {
          console.log("\n\n\nError fetching records >>>>>", err);
        });
      }
    })
});

router.get(MIGRATE_ROUTES['MIGRATE_TRANSFER_PACKAGE'], function(req, res, next) {
    MongoClient.connect(url, function(err, db)  {
      if(err) {
        console.log("Error connecting to DB");
        throw err;
      }
      else {
        const dbo = db.db(APP_DATA['APP_DB']['MAIN_DB']);
        var insertionObj = [];
        tour_packages.selectAll().then( (results) => {
            results.forEach( (result)=> {
              let count=0;
              dbo.collection(DB_TABLES['PACKAGES_TABLE']).insertOne(result.dataValues).then ( (insertRes) =>{
                count++;
              }).catch( (err) => {
                console.log("\nError in insertion>>>", err);
              });
              console.log(`Inserted records `);
              //res.end(`Inserted ${count} records `);
            });
        }).catch( (err) => {
          console.log("\n\n\nError fetching records >>>>>", err);
        });
      }
    })
});

module.exports = router;
