/**
 * Toppers.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

    tableName: "toppers",
    attributes: {
        id: {
            type: "integer",
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            type: "string"
        },
        marks_scored: {
            type: "integer"
        },
        rank: {
            type: "integer"
        }
    }
};

