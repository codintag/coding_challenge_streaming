# coding_challenge_streaming
---------------------------------
- project with Nodejs and React -
---------------------------------
## MCD
#### modèle logique des données
![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/mcd_streaming.png)

## Mysql
Vous pouvez trouver le fichier sql dans le dossier mcd&dbFiles.
#### installation:
Il suffit de lancer mysql, vous pouvez le faire en lançant un mamp, wamp ou xamp locale server.
  ##### une fois dans l'interface de phpmyadmin, vous créez une base de données manuellement ou en lançant la commande (CREATE DATABASE nom_database).
  ![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/database_name_image.png)
  ##### ensuite dans le menu IMPORTER, choisir un fichier et vous sélectionnez votre base de données afin de l'emporter puis éxecuter. 
  ![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/import_database.png)
  
## Node API streaming
#### Mise en route de l'utilisation de api en Node
 - Clonnez le dépot, qui contien les deux projets Api node et le front en React.js
 - positionnez vous dans le dossier node_streaming_api, qui contient les fichiers du projet dans les dépendances, pour que vous puissiez l'utiliser il suffit     d'éxecuter la commande "npm install" afin d'installer les dépendences.
![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/dependences.png)

#### Mise à jour des informations du fichier db.js dans le dossier utility
- si vous décidez de changer le nom de votre db ou si vous utilisez un OS différent et ou wamp / mamp / xamp n'oubliez pas de changer les informations dans le fichier utility/db.js.
![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/connection_mysql.png)

- éxecutez la commande "npm start" pour lancer le serveur crée en express.js.


## React streaming
#### Mise en route de l'installation du projet React
  - une fois l'ensemble du dépot cloné, dans le dossier principale contenant le package.json, on éxecute la commande "npm install" afin d'installer les dépendances pour React.js
  ![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/react_dependences.png)
  
  - éxecutez la commande "npm start" pour lancer le live serveur du react.
  
## Wireframes

## Maquettes
#### Homepage
![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/home_page.png)

#### Movies page
![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/movies_page.png)

#### Series page
![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/series_page.png)

#### Loading
![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/loading.png)

#### Error
![alt text](https://github.com/codintag/coding_challenge_streaming/blob/master/mcd%26dbFiles/error.png)

