// IMPORTER MES DÉPENDANCES
const express = require('express'); // APPEL DE L'EXPRESS JS POUR LES ROUTES
let db = require('../utils/db'); // recupere les bases de données

// creation de la route qui sera importées par la suite dans server.js
const router = express.Router();

// router for get all of stadium
router.get('/allmovies', (req, res) => {
    let selectionMovies = `SELECT * FROM MEDIAS WHERE id_category=2`;

    db.query(selectionMovies, (err, rows, fields) => {
        //on a soit une erreur , soit un résultat 'rows'
        if (err) {
            res.send(err.message);
        } else {
            res.send(rows);
        }
    })
});


// router for get all series from db
router.get('/allseries', (req, res) => {
    let selectionSeries = `SELECT * FROM MEDIAS WHERE id_category=1`;

    db.query(selectionSeries, (err, rows, fields) => {
        //on a soit une erreur , soit un résultat 'rows'
        if (err) {
            res.send(err.message);
        } else {
            res.send(rows);
        }
    })
});




module.exports = router;