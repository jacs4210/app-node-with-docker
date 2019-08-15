// Framework para crear restapi o server
const express = require('express');

// Se obtiene el objeto express.
const app = express();

// Permite visualizar por consola las peticiones http que se van desarrollando
const morgan = require('morgan');

// dev: Permite visualizar mensajes cortos de las peticiones.
app.use(morgan('dev'));

// Permite visualizar las rutas que haya definido.
app.use(require('./routes/index'));

module.exports = app;