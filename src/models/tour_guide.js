'use strict';
module.exports = (sequelize, DataTypes) => {
  const tour_guide = sequelize.define('tour_guide', {
    id : {
      type:DataTypes.INTEGER,
      primaryKey:true
    },
    guide_name: DataTypes.STRING,
    guide_place: DataTypes.STRING,
    design_img: DataTypes.STRING,
    guide_email: DataTypes.STRING,
    guide_language: DataTypes.STRING,
    guide_description: DataTypes.STRING,
    guide_category: DataTypes.STRING,
    avg_rating: DataTypes.INTEGER,
    cover_img: DataTypes.STRING
  }, {
    createdAt: false,
    updatedAt: false,
    freezeTableName : true,
    engine: 'MYISAM'
  });
  tour_guide.associate = function(models) {
    // associations can be defined here
  };
  return tour_guide;
};
