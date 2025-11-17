// server.js
const express = require('express');
const cors = require('cors');
require('dotenv').config();

const pool = require('./db');

const app = express();
const PORT = process.env.PORT || 3000;

// Middlewares
app.use(cors());
app.use(express.json());

// Ruta base para probar
app.get('/', (req, res) => {
  res.json({ mensaje: 'API Express funcionando ✅' });
});

/**
 * CRUD /items
 */

// GET /monster - obtener todos los monstruos
app.get('/monster', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM "Monster" ORDER BY id_monster');
    res.json(result.rows);
  } catch (error) {
    console.error('Error al obtener monstruos:', error);
    res.status(500).json({ error: 'Error al obtener monstruos' });
  }
});


// GET /items/:id - obtener uno
app.get('/items/:id', async (req, res) => {
  const { id } = req.params;
  try {
    const result = await pool.query('SELECT * FROM items WHERE id = $1', [id]);

    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Item no encontrado' });
    }

    res.json(result.rows[0]);
  } catch (error) {
    console.error('Error al obtener item:', error);
    res.status(500).json({ error: 'Error al obtener item' });
  }
});

// POST /items - crear
app.post('/items', async (req, res) => {
  const { nombre, descripcion, precio } = req.body;

  if (!nombre) {
    return res.status(400).json({ error: 'El nombre es obligatorio' });
  }

  try {
    const result = await pool.query(
      'INSERT INTO items (nombre, descripcion, precio) VALUES ($1, $2, $3) RETURNING *',
      [nombre, descripcion, precio]
    );

    res.status(201).json(result.rows[0]);
  } catch (error) {
    console.error('Error al crear item:', error);
    res.status(500).json({ error: 'Error al crear item' });
  }
});

// PUT /items/:id - actualizar
app.put('/items/:id', async (req, res) => {
  const { id } = req.params;
  const { nombre, descripcion, precio } = req.body;

  try {
    const result = await pool.query(
      'UPDATE items SET nombre = $1, descripcion = $2, precio = $3 WHERE id = $4 RETURNING *',
      [nombre, descripcion, precio, id]
    );

    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Item no encontrado' });
    }

    res.json(result.rows[0]);
  } catch (error) {
    console.error('Error al actualizar item:', error);
    res.status(500).json({ error: 'Error al actualizar item' });
  }
});

// DELETE /items/:id - eliminar
app.delete('/items/:id', async (req, res) => {
  const { id } = req.params;

  try {
    const result = await pool.query(
      'DELETE FROM items WHERE id = $1 RETURNING *',
      [id]
    );

    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Item no encontrado' });
    }

    res.json({ mensaje: 'Item eliminado correctamente' });
  } catch (error) {
    console.error('Error al eliminar item:', error);
    res.status(500).json({ error: 'Error al eliminar item' });
  }
});

// Iniciar servidor
app.listen(PORT, () => {
  console.log(`Servidor Express escuchando en http://localhost:${PORT}`);
});
