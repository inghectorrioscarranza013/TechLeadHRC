const { Sequelize, Model, DataTypes } = require('sequelize');
const sequelize = require('../db');

class Messages extends Model {}
Messages.init({
  
  message: DataTypes.STRING
}, { 
  sequelize,
  modelName: 'Messages' });

module.exports= Messages;

