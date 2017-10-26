/**
 * ClassController
 *
 * @description :: Server-side logic for managing Classes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

var _ = require("lodash");
module.exports = {


    getToppersCallback: function (req, res) {
        ClassOne.find().exec(function (err, classOne) { //fetching from class_one table
           if(err) {
               sails.log.debug(err);
               return res.serverError()
           }
           ClassTwo.find().exec(function (err, classTwo) { //fetching from class_two table
               if(err) {
                   sails.log.debug(err);
                   return res.serverError();
               }
               var toppers = [];
               toppers = classOne.concat(classTwo);
               toppers = _.orderBy(toppers, ['marks_scored'], ['desc']); //sorting students by marks_scored
               var i=0;
               toppers = toppers.map(function (t) { //assigning rank to students
                   delete t.id;
                   t.rank = i;
                   i++;
                   return t;
               });
               Toppers.create(toppers).exec(function (err, toppers) { //storing students with rank in toppers table
                   if(err) {
                       sails.log.debug(err);
                       return res.serverError();
                   }
                   return res.send({
                       "success": true,
                       "message": "Toppers created and added to toppers table"
                   });
               });
           });
        });
    },

    getToppersPromises: function (req, res) {
        ClassOne.find().then(function (classOne) { //fetching from class_one table
                return classOne;
            }).then(function (classOne) {
                return ClassTwo.find().then(function (classTwo) { //fetching from class_two table
                        return {
                            class_one: classOne,
                            class_two: classTwo
                        };
                    }).catch(function (err) { //Catch block
                        sails.log.debug(err);
                        throw err; //Goes to final catch block
                    });
            }).then(function (classOneTwo) {
                var toppers = classOneTwo.class_one.concat(classOneTwo.class_two);
                toppers = _.orderBy(toppers, ['marks_scored'], ['desc']);
                var i=0;
                toppers = toppers.map(function (t) {
                    delete t.id;
                    t.rank = i;
                    i++;
                    return t;
                });
                return Toppers.create(toppers).then(function (t){ //storing students with rank in toppers table
                        return res.send({
                            "success": true,
                            "message": "Toppers created and added to toppers table"
                        });
                    }).catch(function (err) {
                        sails.log.debug(err);
                        throw err; //Goes to final catch block
                    });
            }).catch(function (err) { //Final Catch Block
                sails.log.debug(err);
                res.serverError();
            });
    }

};

