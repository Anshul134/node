const sequelize = require('sequelize');
const Op = sequelize.Op;

const models = require('../models');
const db = models.packages;


const Packages = {
  selectAll : function(limit) {
      return new Promise(function(resolve, reject) {
          db.findAll( {
              limit: limit,
              orderBy : [
                ['id', 'DESC']
              ]
          }).then( (results) => {
            resolve(results);
          }).catch( (err) => {
            reject(err);
          })
      });
  }
}

module.exports = Packages;
