// IMPORTER MES DÉPENDANCES
const express = require('express'); // APPEL DE L'EXPRESS JS POUR LES ROUTES
let db = require('../utility/db'); // recupere les bases de données

// creation de la route qui sera importées par la suite dans server.js
const router = express.Router();

// router for get all of Categories
router.get('/categories', (req, res) => {
    let selectionMovies = `SELECT * FROM CATEGORIE_MEDIA`;

    db.query(selectionMovies, (err, rows, fields) => {
        //on a soit une erreur , soit un résultat 'rows'
        if (err) {
            res.send(err.message);
        } else {
            res.send(rows);
        }
    })
});

// create a Category
router.post('/newcategory', (req, res) => {
    let verifyCategory = `SELECT * FROM MEDIA_CATEGORIE WHERE name_category="${req.body.name_category}"`;

    db.query(verifyCategory, (err, rows, fields) => {
        if (err) {
            console.log(err.message);
        } else if (rows.length > 0) {
            res.send(`Le film "${req.body.title_movie}" existe dàja dans la base de données`);


        } else {
            let addCategoryRequest = `INSERT INTO MEDIA_CATEGORIE (name_category) VALUES (
                                '${req.body.name_category}')`;

            db.query(addCategoryRequest, (err, rows, fields) => {
                if (err) {
                    console.log(err.message);
                } else {
                    console.log(`The category "${req.body.name_category}" added to database`);
                    res.send(`The category "${req.body.name_category}" added to database`);
                }
            });

        }
    })
});

//update a movie
router.put('/updatecategory/:id', (req, res) => {
    let id = req.params.id;

            let addPlayerRequest = `UPDATE MEDIA_CATEGORIE SET name_category=? WHERE id_category=?`;
            let datas = [req.body.name_category, id];

            db.query(addPlayerRequest, datas, (err, rows, fields) => {
                if (err) {
                    console.log(err.message);
                } else {
                    // verify request has been updated
                    let modifRows = rows.affectedRows;
                    if(modifRows == 0) {
                        console.log(`${modifRows} row(s) modified : the ID "${id}" does not exists`);
                    } else {
                        console.log(`${modifRows} row(s) modified : the category with ID "${id}" has been updated`);
                    }
                }
            });
});

//route for deleting a movie
router.delete('/deletecategory/:id', (req, res) => {
    let id = req.params.id;

    let deleteUser = `DELETE FROM MEDIA_CATEGORIE WHERE id_category = "${id}"`

    db.query(deleteUser, (err, rows) => {
        if (err) {
            console.log(err.message);
        } else {
            // verify request has been updated
            let modifRows = rows.affectedRows;
            if (modifRows == 0) {
                console.log(`${modifRows} row(s) modified : the ID "${id}" does not exists`);
            } else {
                console.log(`${modifRows} row(s) modified : the category with ID "${id}" has been deleted`);
            }

        }
    });
});


module.exports = router;
