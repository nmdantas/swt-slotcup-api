/*
 * Result controller
 * 
 * Copyright(c) 2017 Fabbrika
 * Author: 2017-03-19 | Nicholas M. Dantas
 */

'use strict';

var router      = require('express').Router();
var business    = require('./../business/result');
var framework   = require('swt-framework');

// Login
router.get('/allCup/:cupId', business.classificacaoCampeonatoEquipe);

module.exports = router;