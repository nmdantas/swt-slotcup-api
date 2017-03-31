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
    positionTeamCup: positionTeamCup,
    positionCategorieCup: positionCategorieCup,
    positionRaces: positionRaces

};

function positionTeamCup(req, res, next) {
    var successCallback = function(result) {
        
        var formattedResponse = {
            campeonato: "",
            results: result.select({
                "campeonatoId" : "Campeonato_Id",
                "campeonato" : "Campeonato",
                "equipeId" : "Equipe_Id",
                "equipe" : "Equipe",
                "posicao" : "Posicao",
                "pontos" : "Pontos_Cup"
            })
        };

        if(result.length > 0 ) {
            formattedResponse.campeonato = result[0].Campeonato;
        }

        res.json(formattedResponse);

        next();
    }

    var errorCallback = function (error) {        
        error = error || new Error();
        error.code = 'US001';

        logManager.error(error, 'swtSlotCup.resultController.positionTeamCup');
                
        next(error);
    }

    if (!req.params.cupId) {
        error = new Error();
        error.code = 'US001';

        logManager.error(error, 'swtSlotCup.resultController.positionTeamCup');
                
        next(error);
    }

    dataAccess.result.getPositionTeamCup(req.params.cupId, successCallback, errorCallback);
}

function positionCategorieCup(req, res, next) {
    var successCallback = function(result) {
        
        var formattedResponse = {
            campeonato: "",
            results: result
        };

        if(result.length > 0 ) {
            formattedResponse.campeonato = result[0].Campeonato;
        }

        res.json(formattedResponse);

        next();
    }

    var errorCallback = function (error) {        
        error = error || new Error();
        error.code = 'US001';

        logManager.error(error, 'swtSlotCup.resultController.positionCategorieCup');
                
        next(error);
    }

    if (!req.params.cupId) {
        error = new Error();
        error.code = 'US001';

        logManager.error(error, 'swtSlotCup.resultController.positionCategorieCup');
                
        next(error);
    }

    dataAccess.result.getPositionCategorieCup(req.params.cupId, successCallback, errorCallback);
}

function positionRaces(req, res, next) {
    var successCallback = function(result) {
        
        var formattedResponse = {
            campeonato: "",
            results: result.select({
                "campeonatoId" : "Campeonato_Id",
                "campeonato" : "Campeonato",
                "etapaId" : "Etapa_Id",
                "etapa" : "Etapa",
                "categoriaId" : "Categoria_Id",
                "categoria" : "Categoria",
                "equipeId" : "Equipe_Id",
                "equipe" : "Equipe",
                "pilotoId" : "Piloto_id",
                "piloto" : "piloto",
                "equipePilotoId" : "Equipe_Piloto_Id",
                "posicaoCategoria" : "posicao_categoria",
                "voltas" : "Voltas",
                "zona" : "Zona",
                "voltasPenalidade" : "Voltas_Penalidade",
                "pontos" : "Pontos",
                "pontoExtra" : "Ponto_Extra",
                "total" : "Total",
                "posicaoCategoria" : "Posicao_Categoria",
                "posicaoCategoriaCup" : "Posicao_Categoria_Cup",
                "pontosCup" : "Pontos_Cup",
                "situacao" : "Situacao",
                "posicaoGeral" : "Posicao_Geral"
            })
        };

        if(result.length > 0 ) {
            formattedResponse.campeonato = result[0].Campeonato;
        }

        res.json(formattedResponse);

        next();
    }

    var errorCallback = function (error) {        
        error = error || new Error();
        error.code = 'US001';

        logManager.error(error, 'swtSlotCup.resultController.positionRaces');
                
        next(error);
    }

    if (!req.params.cupId) {
        error = new Error();
        error.code = 'US001';

        logManager.error(error, 'swtSlotCup.resultController.positionRaces');
                
        next(error);
    }

    dataAccess.result.getPositionRaces(req.params.cupId, successCallback, errorCallback);
}