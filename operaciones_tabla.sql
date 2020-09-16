CREATE DATABASE posts;
CREATE TABLE post(
    id SERIAL,
    nombre_usuario VARCHAR(15),
    fecha_creacion DATA,
    contenido VARCHAR(200),
    descripcion VARCHAR(100),
    PRIMARY KEY (id)
);