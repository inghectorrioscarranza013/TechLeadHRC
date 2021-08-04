const { Sequelize, Model, DataTypes } = require('sequelize');
const sequelize = require('../db');

class User extends Model {}
User.init({
  
  mensaje: DataTypes.STRING
}, { 
  sequelize,
  modelName: 'tblmensajes' });

module.exports= User;

