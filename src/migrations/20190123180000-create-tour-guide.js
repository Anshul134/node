'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('tour_guide', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      guide_name: {
        type: Sequelize.STRING
      },
      guide_place: {
        type: Sequelize.STRING
      },
      design_img: {
        type: Sequelize.STRING
      },
      guide_email: {
        type: Sequelize.STRING
      },
      guide_language: {
        type: Sequelize.STRING
      },
      guide_description: {
        type: Sequelize.STRING
      },
      guide_category: {
        type: Sequelize.STRING
      },
      avg_rating: {
        type: Sequelize.INTEGER
      },
      cover_img: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('tour_guide');
  }
};
