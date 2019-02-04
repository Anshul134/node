const sequelize = require('sequelize');
const db = require('../models');

const tourEvents = db.tour_events;
const tourPackages = db.packages;
const tourGuides = db.tour_guide;

const tour_events = require('../server_controllers/tour_events');
const tour_packages = require('../server_controllers/packages');
const tour_guide = require('../server_controllers/tour_guides');

var data = [];
const HOME = {

    displayIndex : function( callback) {
      tour_events.selectAll(5).then( function(results) {
        data['tourEvents'] = results;
        return tour_packages.selectAll(5);
      }).then( function(results) {
          data['tourPackages'] = results;
          return tour_guide.selectAll(5);
        }, function(err) {
          console.log("\n\n\nerror at tour_events>>>",err);
          throw err;
      }).then( function(results) {
        data['tourGuides'] = results;
        callback(data);
      }, function(err) {
        console.log("\n\n\nerrror in tour_packages>>>>",err);
        throw err;
      }).catch( function(err) {
        console.log("\n\n\ncomplete error at home>>>>>>>>>>",err);
        callback(err);
      })
    }
}

module.exports = HOME;
