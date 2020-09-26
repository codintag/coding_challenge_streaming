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


module.exports = router;
