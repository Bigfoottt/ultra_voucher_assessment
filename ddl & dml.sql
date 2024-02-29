-- DDL
CREATE TABLE pengguna (
    id INT,
    name VARCHAR(50),
    parent_id INT
);

-- DML
INSERT INTO user (id, name, parent_id) VALUES
(1, 'Zaki', 2),
(1, 'Ilham', NULL),
(1, 'Irwan', 2),
(1, 'Arka', 3);

-- perintah untuk manggil semua isi TABLE
SELECT * FROM pengguna

-- perintah untuk menghasilkan data yang diminta
SELECT t1.id, t1.name, t2.name AS parent_name
FROM pengguna t1
LEFT JOIN pengguna t2 ON t1.parent_id = t2.id;