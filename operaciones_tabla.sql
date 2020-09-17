CREATE DATABASE posts;
CREATE TABLE post(
    id SERIAL,
    nombre_usuario VARCHAR(15),
    fecha_creacion DATE,
    contenido VARCHAR(30),
    descripcion VARCHAR(20),
    PRIMARY KEY (id)
);
INSERT INTO post(
    nombre_usuario,
    contenido,
    descripcion
) VALUES(
    'PAMELA',
    'content for PAMELA',
    'description for PAMELA'
), (
    'PAMELA',
    'content for PAMELA',
    'description for PAMELA'
), (
    'CARLOS',
    'content for CARLOS',
    'description for CARLOS'
);
ALTER TABLE post ADD COLUMN titulo VARCHAR(50);

UPDATE post SET titulo='title number one' WHERE id=1;
UPDATE post SET titulo='title number two' WHERE id=2;
UPDATE post SET titulo='title number three' WHERE id=3;

INSERT INTO post(
    nombre_usuario,
    contenido,
    descripcion,
    titulo
) VALUES(
    'PEDRO',
    'content for PEDRO',
    'description for PEDRO',
    'title number one'
), (
    'PEDRO',
    'content for PEDRO',
    'description for PEDRO',
    'title number two'
);

DELETE FROM post WHERE nombre_usuario='CARLOS';

INSERT INTO post(
    nombre_usuario,
    contenido,
    descripcion,
    titulo
) VALUES(
    'CARLOS',
    'new content for CARLOS',
    'new description for CARLOS',
    'new title number one'
);


CREATE TABLE comentarios(
    id SERIAL,
    fecha_hora TIMESTAMP,
    contenido VARCHAR(20),
    FOREIGN KEY(id) REFERENCES post(id)
);

SELECT * FROM comentarios;