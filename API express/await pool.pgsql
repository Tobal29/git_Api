await pool.query(`
    INSERT INTO "Monster" (id_monster, nombre, tipo, especie, elemento, imagen)
    VALUES
      (3, 'Rathalos', 'Wyvern Volador', 'Rathalos', 'Fuego', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em002_ID.png'),
      (1, 'Zinogre', 'Lobo Trueno', 'Zinogre', 'Eléctrico', 'https://ejemplo.com/zinogre.png'),
      (2, 'Lagombi', 'Bestia Peluda', 'Lagombi', 'Hielo', 'https://ejemplo.com/lagombi.png')
    ON CONFLICT (id_monster) DO NOTHING;
    `);

SELECT * FROM "Monster";

DROP TABLE IF EXISTS "Monster";

UPDATE "Monster"
SET id_monster = 3
WHERE id_monster = 0;

INSERT INTO "Monster" (nombre, tipo, elemento, imagen)
VALUES
  ('Alatreon', 'Elder Dragon', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em050_ID.png'),
  ('Anjanath', 'Brute Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em100_ID.png'),
  ('Fulgur Anjanath', 'Brute Wyvern', 'Thunder', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em100_01_ID.png'),
  ('Banbaro', 'Brute Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em123_ID.png'),
  ('Barioth', 'Flying Wyvern', 'Ice', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em042_ID.png'),
  ('Frostfang Barioth', 'Flying Wyvern', 'Ice', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em042_05_ID.png'),
  ('Barroth', 'Brute Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em044_ID.png'),
  ('Bazelgeuse', 'Flying Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em118_ID.png'),
  ('Seething Bazelgeuse', 'Flying Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em118_05_ID.png'),
  ('Behemoth', 'Relict', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em121_ID.png'),
  ('Beotodus', 'Piscine Wyvern', 'Ice', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em122_ID.png'),
  ('Brachydios', 'Brute Wyvern', 'Blast', 'https://pm1.aminoapps.com/6638/a5c0124be5c03545574aae0c342634e3975808ee_hq.jpg'),
  ('Raging Brachydios', 'Brute Wyvern', 'Blast', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em063_05_ID.png'),
  ('Deviljho', 'Brute Wyvern', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em043_ID.png'),
  ('Savage Deviljho', 'Brute Wyvern', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em043_05_ID.png'),
  ('Diablos', 'Flying Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em007_ID.png'),
  ('Black Diablos', 'Flying Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em007_01_ID.png'),
  ('Dodogama', 'Fanged Wyvern', 'Blast', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em116_ID.png'),
  ('Fatalis', 'Elder Dragon', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em013_ID.png'),
  ('Glavenus', 'Brute Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em080_ID.png'),
  ('Acidic Glavenus', 'Brute Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em080_01_ID.png'),
  ('Great Girros', 'Fanged Wyvern', 'Paralysis', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em112_ID.png'),
  ('Great Jagras', 'Fanged Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em101_ID.png'),
  ('Jyuratodus', 'Piscine Wyvern', 'Water', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em108_ID.png'),
  ('Kirin', 'Elder Dragon', 'Thunder', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em011_ID.png'),
  ('Kulu-Ya-Ku', 'Bird Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em107_ID.png'),
  ('Kulve Taroth', 'Elder Dragon', 'Fire', 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5d0257a7-3486-47d1-9695-64179c3f1d58/dc9legh-54e6bf9e-be1b-41f2-a806-78cddf3ed1bc.png/v1/fill/w_1032,h_774/kulve_taroth_humanization_by_muhut_dc9legh-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTIwMSIsInBhdGgiOiIvZi81ZDAyNTdhNy0zNDg2LTQ3ZDEtOTY5NS02NDE3OWMzZjFkNTgvZGM5bGVnaC01NGU2YmY5ZS1iZTFiLTQxZjItYTgwNi03OGNkZGYzZWQxYmMucG5nIiwid2lkdGgiOiI8PTE2MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.vS7UZllYEpS6jkDDfAhl8Fd75CVN1nBlHkojK52hC9M'),
  ('Kushala Daora', 'Elder Dragon', 'Ice', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em024_ID.png'),
  ('Lavasioth', 'Piscine Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em036_ID.png'),
  ('Legiana', 'Flying Wyvern', 'Ice', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em111_ID.png'),
  ('Shrieking Legiana', 'Flying Wyvern', 'Ice', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em111_05_ID.png'),
  ('Leshen', 'Relict', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em127_ID.png'),
  ('Ancient Leshen', 'Relict', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em127_01_ID.png'),
  ('Lunastra', 'Elder Dragon', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em026_ID.png'),
  ('Namielle', 'Elder Dragon', 'Water', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em125_ID.png'),
  ('Nargacuga', 'Flying Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em037_ID.png'),
  ('Nergigante', 'Elder Dragon', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em103_ID.png'),
  ('Ruiner Nergigante', 'Elder Dragon', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em103_05_ID.png'),
  ('Odogaron', 'Fanged Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em113_ID.png'),
  ('Ebony Odogaron', 'Fanged Wyvern', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em113_01_ID.png'),
  ('Paolumu', 'Flying Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em110_ID.png'),
  ('Nightshade Paolumu', 'Flying Wyvern', 'Sleep', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em110_01_ID.png'),
  ('Pukei-Pukei', 'Bird Wyvern', 'Poison', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em102_ID.png'),
  ('Coral Pukei-Pukei', 'Bird Wyvern', 'Water', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em102_01_ID.png'),
  ('Radobaan', 'Brute Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em114_ID.png'),
  ('Rajang', 'Fanged Beast', 'Thunder', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em023_ID.png'),
  ('Furious Rajang', 'Fanged Beast', 'Thunder', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em023_05_ID.png'),
  ('Rathalos', 'Flying Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em002_ID.png'),
  ('Azure Rathalos', 'Flying Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em002_01_ID.png'),
  ('Silver Rathalos', 'Flying Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em002_02_ID.png'),
  ('Rathian', 'Flying Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em001_ID.png'),
  ('Pink Rathian', 'Flying Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em001_01_ID.png'),
  ('Gold Rathian', 'Flying Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em001_02_ID.png'),
  ('Safi''jiiva', 'Elder Dragon', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em104_ID.png'),
  ('Shara Ishvalda', 'Elder Dragon', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em126_ID.png'),
  ('Teostra', 'Elder Dragon', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em027_ID.png'),
  ('Tigrex', 'Flying Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em032_ID.png'),
  ('Brute Tigrex', 'Flying Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em032_01_ID.png'),
  ('Tobi-Kadachi', 'Fanged Wyvern', 'Thunder', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em109_ID.png'),
  ('Viper Tobi-Kadachi', 'Fanged Wyvern', 'Poison', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em109_01_ID.png'),
  ('Tzitzi-Ya-Ku', 'Bird Wyvern', 'Raw', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em120_ID.png'),
  ('Uragaan', 'Brute Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em045_ID.png'),
  ('Vaal Hazak', 'Elder Dragon', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em115_ID.png'),
  ('Blackveil Vaal Hazak', 'Elder Dragon', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em115_05_ID.png'),
  ('Velkhana', 'Elder Dragon', 'Ice', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em124_ID.png'),
  ('Xeno''jiiva', 'Elder Dragon', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em105_ID.png'),
  ('Yian Garuga', 'Bird Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em018_ID.png'),
  ('Scarred Yian Garuga', 'Bird Wyvern', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em018_05_ID.png'),
  ('Zinogre', 'Fanged Wyvern', 'Thunder', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em057_ID.png'),
  ('Stygian Zinogre', 'Fanged Wyvern', 'Dragon', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em057_01_ID.png'),
  ('Zorah Magdaros', 'Elder Dragon', 'Fire', 'https://cdn.kiranico.net/file/kiranico/mhworld-web/mhw/icon/em106_ID.png')
ON CONFLICT (id_monster) DO NOTHING;



CREATE TABLE IF NOT EXISTS "Monster" (
        id_monster SERIAL PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        tipo VARCHAR(100),
        elemento VARCHAR(100),
        imagen TEXT
      );