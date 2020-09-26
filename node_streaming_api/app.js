// 1) CREATION DES DEPENDENCES DE MODULES
const express = require('express');
const app = express();

const cors = require('cors');
const bodyParser = require('body-parser');
const mysqlApostrophe = require('mysql-apostrophe');

app.set('view engine', 'ejs'); // set template engine
app.set('views', './views'); // embedded files in views folder

//RESSOURCES PARTAGÉS ENTRE ORIGINS DIFFÉRENTS
app.use(cors());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

// 3- MISE EN PLACE DE mysqlApostrophe
app.use(mysqlApostrophe); // PERMET D'INSERER DES CHAMPS CONCERNANT DES APOSTROPHES

// 4 - RECUPERATION DES FICHIERS ROUTES DANS LE DOSSIER ROUTES
let readMovies = require('./routes/Movies');
let readCategories = require('./routes/Categories');

app.use('/films', readMovies);
app.use('/films', readCategories);


// CHOIX DU PORT UTILISÉ PAR LE SERVEUR
const port = process.env.PORT || 3051; //RECUPERE UN PORT LIBRE SINON 3000

app.listen(port, function () {
    console.log("Ok ça marche!");
    console.log("Le serveur est utilisé sur le port : " + port);
});