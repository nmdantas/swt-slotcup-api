/*
 * Result business layer
 * 
 * Copyright(c) 2017 Fabbrika
 * Author: 2017-03-20 | Nicholas M. Dantas
 */

'use strict';

var TIMEOUT = process.env.CACHE_MAX_AGE; /* Tempo Default no Cache Atual - 10 minutos */

var dataAccess  = require('./../data-access');
var framework   = require('swt-framework');
var logManager  = framework.logger;

module.exports = {
    classificacaoCampeonatoEquipe: [
        classificacaoCampeonatoEquipe
    ]
};

function classificacaoCampeonatoEquipe(req, res, next) {
    var successCallback = function(result) {
        req.data = result;

        next();
    }

    var errorCallback = function (error) {        
        error = error || new Error();
        error.code = 'US001';

        logManager.error(error, 'swtUserManager.userController.login');
                
        next(error);
    }

    var cupId = req.cupId;

    dataAccess.result.getClassificacaoCampeonatoEquipe(cupId, successCallback, errorCallback);
}