-- SQLBook: Code
CREATE TABLE libros (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    editorial VARCHAR(255),
    anio_publicacion INT,
    num_paginas INT
);

CREATE TABLE autor (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    nacionalidad VARCHAR(255),
    fecha_nacimiento DATE
);

CREATE TABLE usuario (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),
    correo_electronico VARCHAR(255)
);

CREATE TABLE prestamo (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    libro_id INT NOT NULL,
    usuario_id INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    FOREIGN KEY (libro_id) REFERENCES libros(id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE multas (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha_multa DATE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

INSERT INTO libros(titulo, autor, editorial, anio_publicacion, num_paginas) VALUES ("El quijote","servantes","la campana",2023-11-12,303);
INSERT INTO libros(titulo, autor, editorial, anio_publicacion, num_paginas) VALUES ("andres","loste","qeilil",2023-11-12,303);
INSERT INTO libros(titulo, autor, editorial, anio_publicacion, num_paginas) VALUES ("odisea","homero","norma",2023-11-12,303);
INSERT INTO libros(titulo, autor, editorial, anio_publicacion, num_paginas) VALUES ("casualidad","william","liter",2023-11-12,303);

INSERT INTO usuario(nombre, direccion, correo_electronico) VALUES ("maikol","san fernando","saenx65@gmail.com");
INSERT INTO usuario(nombre, direccion, correo_electronico) VALUES ("daniel","san fernando","sdr@gmail.com");
INSERT INTO usuario(nombre, direccion, correo_electronico) VALUES ("alisson","san fernando","rtr@gmail.com");
INSERT INTO usuario(nombre, direccion, correo_electronico) VALUES ("alejandro","B. bolivar","pooeuf@gmail.com");
INSERT INTO usuario(nombre, direccion, correo_electronico) VALUES ("lessly","la paz","werts@gmail.com");

INSERT INTO multas (id, usuario_id, monto, fecha_multa) VALUES (NULL, 2, 52000, '2023-04-10'), (NULL, 4, 590000, '2023-04-18');
