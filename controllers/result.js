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

// Results
router.get('/positionTeamCup/:cupId', business.positionTeamCup);
router.get('/positionCategorieCup/:cupId', business.positionCategorieCup);
router.get('/positionRaces/:cupId', business.positionRaces);

module.exports = router;