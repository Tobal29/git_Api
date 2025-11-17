# 📘 API REST – Monster Hunter + Items

API desarrollada en **Node.js**, **Express** y **PostgreSQL**, que expone información de monstruos y un CRUD completo para items.

---

## 🚀 Tecnologías utilizadas

* **Node.js**
* **Express**
* **PostgreSQL (pg)**
* **dotenv**
* **cors**
* **nodemon**

---

## 📁 Estructura del proyecto

```
.
├── db.js
├── server.js          ← archivo principal del servidor API
├── package.json
├── initDB.js          (opcional: script inicialización de BD)
├── .env
└── node_modules/
```

---

# ⚙️ Configuración del entorno

## 1️⃣ Instalar dependencias

```bash
npm install
```

Si aún no existen:

```bash
npm install express pg cors dotenv
npm install --save-dev nodemon
```

---

## 2️⃣ Archivo `.env`

Debe estar en la raíz del proyecto:

```env
PORT=3001

DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=TUPASS
DB_NAME=MH_db
```

Asegúrate de reemplazar los valores según tu base de datos local.

---

## 3️⃣ Conexión a PostgreSQL (`db.js`)

La API utiliza un pool de conexiones a PostgreSQL:

```js
const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

module.exports = pool;
```

---

# ▶️ Ejecutar el servidor

### Modo desarrollo (con nodemon)

```bash
npm run dev
```

### Modo producción

```bash
npm start
```

Salida esperada:

```
Servidor Express escuchando en http://localhost:3001
```

---

# 🌐 Endpoints disponibles

A continuación se describen todos los endpoints implementados en `server.js`


---

## 🟦 1. Ruta base

### `GET /`

```json
{ "mensaje": "API Express funcionando ✅" }
```

---

## 🟩 2. Obtener todos los monstruos (solo lectura)

### `GET /monster`

Devuelve todos los monstruos almacenados en la tabla `"Monster"`:

```json
[
  {
    "id_monster": 1,
    "nombre": "Alatreon",
    "tipo": "Elder Dragon",
    "elemento": "Dragon",
    "imagen": "https://..."
  }
]
```

Consulta utilizada:

```sql
SELECT * FROM "Monster" ORDER BY id_monster;
```

---

# 🟥 CRUD Items (Create, Read, Update, Delete)

La API también expone un CRUD completo para la tabla **items**.

---

## 3. Obtener item por ID

### `GET /items/:id`

Respuesta ejemplo:

```json
{
  "id": 1,
  "nombre": "Pocion Maxima",
  "descripcion": "Item de curación",
  "precio": 120
}
```

---

## 4. Crear un item

### `POST /items`

Body JSON:

```json
{
  "nombre": "MegaPoción",
  "descripcion": "Cura mucha vida",
  "precio": 200
}
```

---

## 5. Actualizar un item

### `PUT /items/:id`

Body JSON:

```json
{
  "nombre": "MegaPoción+",
  "descripcion": "Cura salud al máximo",
  "precio": 250
}
```

---

## 6. Eliminar un item

### `DELETE /items/:id`

Respuesta:

```json
{ "mensaje": "Item eliminado correctamente" }
```

---

# 🗃 Base de datos requerida

### Tabla `Monster`

```sql
CREATE TABLE "Monster" (
  id_monster SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  tipo VARCHAR(100),
  especie VARCHAR(100),
  elemento VARCHAR(100),
  imagen TEXT
);
```

### Tabla `items`

```sql
CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  descripcion TEXT,
  precio NUMERIC(10,2)
);
