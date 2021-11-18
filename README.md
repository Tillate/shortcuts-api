# API Shortcuts

## Installation

```shell
npm install
```

Créer un fichier `.env` à la racine du projet :

```dotenv
DB_HOST=localhost
DB_NAME=shortcuts
DB_USER=root
DB_PASS=root
```

## Création du projet

### Génération du code Express

```shell
npx express-generator --no-view --git shortcuts-api
```

Aller dans le dossier et installer les dépendances avec NPM :

```shell
cd shortcuts-api
npm install
```

### Installer nodemon

```shell
npm install nodemon
```

Modifier le fichier package.json :

```json
"scripts": {
    "start": "./node_modules/.bin/nodemon ./bin/www"
}
```

### Installer mysql2

```shell
npm install mysql2
```

Connecter la base de données dans le fichier bin/www :

```javascript
var mysql = require('mysql2');



/*
 * Connection à la base de données
 */
const connection = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'shortcuts',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

app.locals.db = connection;
```

### Installer dotenv

```shell
npm install dotenv
```

Appeler la fonction `config()` en haut du fichier bin/www :

```javascript
require('dotenv').config();
```

Créer le fichier .env à la racine du projet :

```dotenv
DB_HOST=localhost
DB_NAME=shortcuts
DB_USER=root
DB_PASS=root
```

Modifier la connexion à la base de données dans le fichier bin/www :

```javascript
/*
 * Connection à la base de données
 */
const connection = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

app.locals.db = connection;
```
