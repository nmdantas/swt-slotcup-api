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

var app = express();

app.use(bodyParser.json());
app.use(compression());
app.use(framework.security.accessControl.enablePreflight);
// Verificacoes no Header Authorization
app.use(framework.security.accessControl.checkAuthorization);

// Rotas
app.use('/api/v0/users', userManager.controllers.user);

// Middleware de erro
app.use(framework.middlewares.log);

// Rota default
app.get('/', function(req, res) {
    res.json({
        api: process.env.APPLICATION_NAME,
        version: process.env.APPLICATION_VERSION
    });
});

// Inicia o servidor
app.listen(PORT);
console.log('Server Started...');