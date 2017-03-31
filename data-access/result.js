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
        getPositionTeamCup: getPositionTeamCup,
        getPositionCategorieCup: getPositionCategorieCup,
        getPositionRaces: getPositionRaces
    };
}

/**
 * Select all cup results team
 *
 * @return {resultEntity[]}
 * @public
 */
function getPositionTeamCup(cupId, successCallback, errorCallback) {
    // Obtem uma conexao do pool
    connectionPool.getConnection(function(poolError, connection) {
        if (poolError) {
            errorCallback(poolError);

            return;
        }

        var query = 'SELECT * ' +
                    'FROM classificacao_geral_equipe ' +
                    'WHERE Campeonato_Id = ? ' +
                    'ORDER BY Campeonato_Id asc, posicao asc;';

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

/**
 * Select all cup results team
 *
 * @return {resultEntity[]}
 * @public
 */
function getPositionCategorieCup(cupId, successCallback, errorCallback) {
    // Obtem uma conexao do pool
    connectionPool.getConnection(function(poolError, connection) {
        if (poolError) {
            errorCallback(poolError);

            return;
        }

        var query = 'SELECT * ' +
                    'FROM classificacao_geral_categoria ' +
                    'WHERE Campeonato_Id = ? ' +
                    'GROUP BY Categoria_Id, Piloto_Categoria_Id ' +
                    'ORDER BY Categoria_Id ASC, posicao_categoria ASC';

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

/**
 * Select all cup results team
 *
 * @return {resultEntity[]}
 * @public
 */
function getPositionRaces(cupId, successCallback, errorCallback) {
    // Obtem uma conexao do pool
    connectionPool.getConnection(function(poolError, connection) {
        if (poolError) {
            errorCallback(poolError);

            return;
        }

        var query = 'SELECT * ' +
                    'FROM classificacao_geral_etapa ' +
                    'WHERE Campeonato_Id = ? ' +
                    'GROUP BY Etapa_Id, Categoria_Id, Equipe_Piloto_Id ' +
                    'ORDER BY Etapa_Id, Categoria_Id, Posicao_Categoria';

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