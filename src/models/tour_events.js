'use strict';
module.exports = (sequelize, DataTypes) => {
  const tour_events = sequelize.define('tour_events', {
    event_id: {
      type: DataTypes.INTEGER,
      primaryKey : true,
      autoIncrement:true
    },
    event_name: DataTypes.STRING,
    event_location: DataTypes.STRING,
    event_brief: DataTypes.STRING,
    event_inclusions: DataTypes.STRING,
    event_pickup: DataTypes.STRING,
    event_drop: DataTypes.STRING,
    guide_price: DataTypes.INTEGER,
    our_price: DataTypes.INTEGER,
    number_days: DataTypes.STRING,
    minimum_group: DataTypes.INTEGER,
    event_start_dates: DataTypes.DATE,
    event_end_date: DataTypes.DATE,
    display_img: DataTypes.STRING,
    image1: DataTypes.STRING
  }, {
    createdAt: false,
    updatedAt: false,
    freezeTableName : true,
    engine: 'MYISAM2'
  });
  tour_events.associate = function(models) {
    // associations can be defined here
  };
  return tour_events;
};
