const express = require('express');
const router = express.Router();
const Sequelize = require('sequelize');
const db = require('../models');
const config = require("../config/config.json");
const app = require("../../app");

const tour_events = require('../server_controllers/tour_events');
const tour_packages = require('../server_controllers/packages');
const home_functions = require('../server_controllers/home');


//const tourGuidesSeq= db.tour_guides;
router.get('/', function(req, res, next) {
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
      console.log("\n\n\nPackages>>>>>>>>>>>",data['tourGuides'][0].id);
      res.render('index', {layout:'layout', tourEvents:data['tourEvents'], tourPackages:data['tourPackages'], tourGuides: data['tourGuides'] });

    }
  });

});


module.exports = router;
