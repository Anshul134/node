'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('packages', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      id: {
        type: Sequelize.INTEGER
      },
      guide_id: {
        type: Sequelize.INTEGER
      },
      category: {
        type: Sequelize.STRING
      },
      package_name: {
        type: Sequelize.STRING
      },
      package_brief: {
        type: Sequelize.STRING
      },
      guide_price: {
        type: Sequelize.INTEGER
      },
      our_price: {
        type: Sequelize.INTEGER
      },
      no_days: {
        type: Sequelize.STRING
      },
      pickup_location: {
        type: Sequelize.STRING
      },
      drop_location: {
        type: Sequelize.STRING
      },
      transport: {
        type: Sequelize.STRING
      },
      food: {
        type: Sequelize.STRING
      },
      accomodation: {
        type: Sequelize.STRING
      },
      extra_service: {
        type: Sequelize.STRING
      },
      guide_service: {
        type: Sequelize.STRING
      },
      display_img: {
        type: Sequelize.STRING
      },
      image1: {
        type: Sequelize.STRING
      },
      image2: {
        type: Sequelize.STRING
      },
      popularity: {
        type: Sequelize.INTEGER
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
    return queryInterface.dropTable('packages');
  }
};