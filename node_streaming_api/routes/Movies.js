// IMPORTER MES DÉPENDANCES
const express = require('express'); // APPEL DE L'EXPRESS JS POUR LES ROUTES
let db = require('../utility/db'); // recupere les bases de données

// creation de la route qui sera importées par la suite dans server.js
const router = express.Router();

// router for get all of Movies
router.get('/allmovies', (req, res) => {
    let selectionMovies = `SELECT *, DATE_FORMAT(release_year, "%Y") as release_year FROM MEDIAS WHERE id_category=2 AND release_year >= '2010' LIMIT 21`;

    // let selectionMovies = `SELECT id_movie, title_movie, description_movie, url_image_movie, DATE_FORMAT(release_year, "%Y") as release_year FROM MEDIAS WHERE id_category=2`;

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
    let selectionSeries = `SELECT *, DATE_FORMAT(release_year, "%Y") as release_year FROM MEDIAS WHERE id_category=1 AND release_year >= '2010' LIMIT 21`;

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

//update a movie
router.put('/updatemovie/:id', (req, res) => {
    let id = req.params.id;

            let addPlayerRequest = `UPDATE MEDIA SET title_movie=?, description_movie=?, url_image_movie=?, release_year=?, id_category=? WHERE id_movie=?`;
            let datas = [req.body.title_movie, req.body.description_movie, req.body.url_image_movie, req.body.release_year, req.body.id_category, id];

            db.query(addPlayerRequest, datas, (err, rows, fields) => {
                if (err) {
                    console.log(err.message);
                } else {
                    // verify request has been updated
                    let modifRows = rows.affectedRows;
                    if(modifRows == 0) {
                        console.log(`${modifRows} row(s) modified : the ID "${id}" does not exists`);
                    } else {
                        console.log(`${modifRows} row(s) modified : the movie with ID "${id}" has been updated`);
                    }
                }
            });
});

//route for deleting a movie
router.delete('/deletemovie/:id', (req, res) => {
    let id = req.params.id;

    let deleteUser = `DELETE FROM MEDIA WHERE id_movie = "${id}"`

    db.query(deleteUser, (err, rows) => {
        if (err) {
            console.log(err.message);
        } else {
            // verify request has been updated
            let modifRows = rows.affectedRows;
            if (modifRows == 0) {
                console.log(`${modifRows} row(s) modified : the ID "${id}" does not exists`);
            } else {
                console.log(`${modifRows} row(s) modified : the movie with ID "${id}" has been deleted`);
            }

        }
    });
});




module.exports = router;