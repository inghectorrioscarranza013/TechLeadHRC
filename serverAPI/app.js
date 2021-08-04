
const express = require('express')
const cors = require('cors')
const app = express()
const port = 3000
const sequelize = require('./database/db.js');

//Middleware
app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.use(cors());
app.get('/', (req, res) => {
  res.json("Welcome to my Express-Sequelize Interface, by Hector Rios");
});

//app.use('/api/posts',require('./routes/posts'));
app.use('/api/posts',require('./routes/messages'));

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
  //conectarse a la base de datos.
  sequelize.sync({force:false}).then(()=>{
    console.log("Se conecto a la base")
  }).catch(error=>{
    console.log('Error de conexion',error)
  })
})
