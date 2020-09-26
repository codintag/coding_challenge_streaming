const mysql = require('mysql');

// CONNEXION À MA BASE DE DONNÉE
const dbConnexion = mysql.createConnection({
    host: 'localhost',
    database: 'streaming',
    user: 'root',
    password: 'root',
    DATABASE_PORT: 8889,
    // socketpath st disponible ur la page accueil du mamp local
    socketPath: '/Applications/MAMP/tmp/mysql/mysql.sock',
    strict: false // Permet d'entrer des valeurs null pour les champs date
});



//- 3 VERIFICATION DE LA CONNEXION A LA BASE

dbConnexion.connect((err) => {
    if(err) {
        console.log(err.message);
    } else {
        console.log('Connexion à la base reussie');
    }
});

// LISTES DES VARIABLES QUI VONT ÊTRE EXPORTÉS
// NOM DE L'EXPORT : VARIABLES EXPORTÉS
module.exports = dbConnexion;
