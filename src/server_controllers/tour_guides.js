const Sequelize = require('sequelize');
const db = require('../models');

const Guides = db.tour_guide;


tour_guides = {
	selectAll : function(limit)  {
		return new Promise( (resolve,reject) => {
			Guides.findAll({
				limit:limit,
				order :
					[ ['id','DESC'] ]

				}).then((result)=> resolve(result) )
				  .catch((err)=> reject(err) );
		});
	}
}


module.exports = tour_guides;
