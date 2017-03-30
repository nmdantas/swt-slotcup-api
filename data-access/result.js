/*
 * data-access
 * 
 * Copyright(c) 2017 Fabbrika
 * Author: 2017-03-19 | Nicholas M. Dantas
 */

'use strict';

var connectionPool = null;

exports = module.exports = initialize;

/**
 * Expose 'initialize()'.
 */
function initialize(pool) {
    if (connectionPool == null)
        connectionPool = pool;

    return {
        getClassificacaoCampeonatoEquipe: getClassificacaoCampeonatoEquipe
    };
}

/**
 * Select all cup results team
 *
 * @return {resultEntity[]}
 * @public
 */
function getClassificacaoCampeonatoEquipe(cupId, successCallback, errorCallback) {
    // Obtem uma conexao do pool
    connectionPool.getConnection(function(poolError, connection) {
        if (poolError) {
            errorCallback(poolError);

            return;
        }

        var query = 'SELECT * ' +
                    'FROM classificacao_geral_equipe ' +
                    'WHERE Campeonato_Id = ? ' +
                    'ORDER BY Campeonato_Id, posicao;';

        connection.query(query, [cupId], function (error, results, fields) {
            connection.release();

            if (error) {
                errorCallback(error);
            } else {
                successCallback(results);
            }
        });
    });
}