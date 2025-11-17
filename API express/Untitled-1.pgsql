INSERT INTO "Monster" (id_monster, nombre, tipo, especie, elemento)
VALUES
(1, 'Rathalos', 'Wyvern Volador', 'Rathalos', 'Fuego'),
(2, 'Zinogre', 'Lobo Trueno', 'Zinogre', 'Eléctrico'),
(3, 'Lagombi', 'Bestia Peluda', 'Lagombi', 'Hielo');

SELECT * FROM "Monster";

UPDATE "Monster"
SET imagen = 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em002_ID.png'
WHERE id_monster = 1;
