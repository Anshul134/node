'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('tour_events', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      event_id: {
        type: Sequelize.INTEGER
      },
      event_name: {
        type: Sequelize.STRING
      },
      event_location: {
        type: Sequelize.STRING
      },
      event_brief: {
        type: Sequelize.STRING
      },
      event_inclusions: {
        type: Sequelize.STRING
      },
      event_pickup: {
        type: Sequelize.STRING
      },
      event_drop: {
        type: Sequelize.STRING
      },
      guide_price: {
        type: Sequelize.NUMBER
      },
      our_price: {
        type: Sequelize.NUMBER
      },
      number_days: {
        type: Sequelize.STRING
      },
      minimum_group: {
        type: Sequelize.INTEGER
      },
      event_start_dates: {
        type: Sequelize.DATE
      },
      event_end_dates: {
        type: Sequelize.DATE
      },
      display_img: {
        type: Sequelize.STRING
      },
      image: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('tour_events');
  }
};