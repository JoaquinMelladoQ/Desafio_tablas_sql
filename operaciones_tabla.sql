CREATE DATABASE posts;
CREATE TABLE post(
    id SERIAL,
    nombre_usuario VARCHAR(15),
    fecha_creacion DATA,
    contenido VARCHAR(200),
    descripcion VARCHAR(100),
    PRIMARY KEY (id)
);
INSERT INTO post(
    nombre de usuario,
    contenido,
    descripcion
), VALUES(
    'Pamela',
    'content for pamela',
    'description for pamela'
), (
    'Pamela',
    'content for pamela',
    'description for pamela'
), (
    'Carlos',
    'content for carlos',
    'description for carlos'
);
ALTER TABLE post ADD COLUMN titulo VARCHAR(50);
