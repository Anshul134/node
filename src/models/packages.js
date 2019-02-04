'use strict';
module.exports = (sequelize, DataTypes) => {
  const packages = sequelize.define('packages', {
    id:  {
      type: DataTypes.INTEGER,
      primaryKey : true
    },
    guide_id: DataTypes.INTEGER,
    category: DataTypes.STRING,
    package_name: DataTypes.STRING,
    package_brief: DataTypes.STRING,
    guide_price: DataTypes.INTEGER,
    our_price: DataTypes.INTEGER,
    no_days: DataTypes.STRING,
    pickup_location: DataTypes.STRING,
    drop_location: DataTypes.STRING,
    transport: DataTypes.STRING,
    food: DataTypes.STRING,
    accomodation: DataTypes.STRING,
    extra_service: DataTypes.STRING,
    guide_service: DataTypes.STRING,
    display_img: DataTypes.STRING,
    image1: DataTypes.STRING,
    image2: DataTypes.STRING,
    popularity: DataTypes.INTEGER
  }, {
    updatedAt:false,
    createdAt:false,
    freezeTableName : true,
    engine: 'MYISAM2'
  });
  packages.associate = function(models) {
    // associations can be defined here
  };
  return packages;
};
