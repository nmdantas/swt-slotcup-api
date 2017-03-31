/*
 * Slot Cup Application
 * 
 * Copyright(c) 2017 Fabbrika
 * Author: 2017-03-20 | Nicholas M. Dantas
 */

'use strict';

// Inicia as variaveis de ambiente
require('dotenv').config();

var PORT = process.env.PORT || 1337;

var express     = require('express');
var bodyParser  = require('body-parser');
var compression = require('compression');
var framework   = require('swt-framework');
var userManager = require('swt-user-manager');
var resultController = require('./controllers/result');

var app = express();

app.use(bodyParser.json());
app.use(compression());

// Rota default
app.all('/', function(req, res) {
    res.json({
        api: process.env.APPLICATION_NAME,
        version: process.env.APPLICATION_VERSION
    });
});

app.use(framework.security.enablePreflight);
// Verificacoes no Header Authorization
app.use(framework.security.checkAuthorization);

// Rotas
//app.use('/api/v0/users', userManager.controllers.user);

app.use('/api/v0/results', resultController);

// Middleware de erro
app.use(framework.logger.middleware);

// Inicia o servidor
app.listen(PORT);
console.log('Server Started...');