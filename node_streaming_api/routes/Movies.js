// IMPORTER MES DÉPENDANCES
const express = require('express'); // APPEL DE L'EXPRESS JS POUR LES ROUTES
let db = require('../utility/db'); // recupere les bases de données

// creation de la route qui sera importées par la suite dans server.js
const router = express.Router();

// router for get all of Movies
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

// create a movie
router.post('/newmovie', (req, res) => {
    let verifyPlayer = `SELECT * FROM MEDIAS WHERE title_movie="${req.body.title_movie}"`;

    db.query(verifyPlayer, (err, rows, fields) => {
        if (err) {
            console.log(err.message);
        } else if (rows.length > 0) {
            res.send(`Le film "${req.body.title_movie}" existe dàja dans la base de données`);


        } else {
            let addMediasRequest = `INSERT INTO MEDIAS (title_movie, description_movie, url_image_movie, release_year,id_category) VALUES (
                                '${req.body.title_movie}',
                                '${req.body.description_movie}',
                                '${req.body.url_image_movie}',
                                '${req.body.release_year}',
                                '${req.body.id_category}')`;

            db.query(addMediasRequest, (err, rows, fields) => {
                if (err) {
                    console.log(err.message);
                } else {
                    console.log(`The movie "${req.body.title_movie}" added to database`);
                    res.send(`The movie "${req.body.title_movie}" added to database`);
                }
            });

        }
    })
});




module.exports = router;