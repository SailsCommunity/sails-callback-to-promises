/**
 * ClassOne.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

    tableName: "class_one",
    migrate: "safe",
    attributes: {
        id: {
            type: "integer",
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: "string"
        },
        marks_scored: {
            type: "integer"
        }
    }
};

