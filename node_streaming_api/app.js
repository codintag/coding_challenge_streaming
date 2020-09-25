// 1) CREATION DES DEPENDENCES DE MODULES
//const https = require('https');
const fs = require('fs');
const express = require('express');
const app = express();
//const router = express.Router();
const cors = require('cors');
//const mysql = require('mysql');
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
let read = require('./routes/films');

app.use('/films', read);




// CHOIX DU PORT UTILISÉ PAR LE SERVEUR
const port = process.env.PORT || 3051; //RECUPERE UN PORT LIBRE SINON 3000

app.listen(port, function () {
    console.log("Ok ça marche!");
    console.log("Le serveur est utilisé sur le port : " + port);
});