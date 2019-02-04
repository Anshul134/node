const sequelize = require('sequelize');
const db = require('../models');

const tourEvents = db.tour_events;

const tour_events = {
  selectAll : function(limit)  {
      return new Promise( (resolve,reject) =>{
        tourEvents.findAll( {
          
          orderBy :[
            ['id','DESC']
          ]
        }).then( (results) => {
          resolve(results);
        }).catch((err) => {
          reject(err);
        });
      });
  }
};

module.exports = tour_events;
