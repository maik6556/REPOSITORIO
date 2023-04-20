CREATE TABLE usuario (
		id_usuario INT  PRIMARY KEY,
		nombre VARCHAR(50),
		apellido VARCHAR(50),
		nacionalidad VARCHAR(50),
    	correo VARCHAR(50),
    	clave VARCHAR(50),
    	sexo VARCHAR(50));
       
        
CREATE TABLE amigos (
		id_amigos INT  PRIMARY KEY,
		amigos INT(11) ,
		amigos_dos INT (11),
		tipo VARCHAR(50));
        
CREATE TABLE comentario (
		id_comentario INT  PRIMARY KEY,
		comentario VARCHAR(50),
		fecha DATE,
        amigo INT (11),
    	usuario INT (11),
    	FOREIGN KEY (usuario) REFERENCES usuario(id_usuario),
    	FOREIGN KEY(amigo) REFERENCES amigos(id_amigos));
        
CREATE TABLE publicacion (
		id_publicacion INT  PRIMARY KEY,
		publicacion VARCHAR(500),
		fecha DATE,
    	usuario int(11),
		FOREIGN KEY (usuario) REFERENCES usuario(id_usuario));


INSERT INTO comentario(id_comentario, comentario, fecha, amigo, usuario) VALUES (1,"jajajaja",12-01-2023,1,1);
INSERT INTO comentario(id_comentario, comentario, fecha, amigo, usuario) VALUES (2,"ni se dio cuenta",12-01-2023,2,1);
INSERT INTO comentario(id_comentario, comentario, fecha, amigo, usuario) VALUES (3,"decile que si",12-01-2023,3,2);
INSERT INTO comentario(id_comentario, comentario, fecha, amigo, usuario) VALUES (4,"para el viernes entonces?",12-01-2023,4,3);


INSERT INTO amigos(id_amigos, amigos, amigos_dos, tipo) VALUES (2,3,4,"comun");
INSERT INTO amigos(id_amigos, amigos, amigos_dos, tipo) VALUES (3,4,2,"comun");
INSERT INTO amigos(id_amigos, amigos, amigos_dos, tipo) VALUES (4,5,3,"comun");


INSERT INTO publicacion(id_publicacion, publicacion, fecha, usuario) VALUES (1,"no puedo superar a ese hombre que me domina todas las noches y me hace sentir mujer","13/04/2023",3);
INSERT INTO publicacion(id_publicacion, publicacion, fecha, usuario) VALUES (2," Sin keng la universidad es una mierda, lo extraño cuando me sacaba en su yamaha 2.0","13/04/2023",4);
INSERT INTO publicacion(id_publicacion, publicacion, fecha, usuario) VALUES (3,"amanda no te supero","13/04/2023",5);
INSERT INTO publicacion(id_publicacion, publicacion, fecha, usuario) VALUES (4,"ayer robe al vigilante y el mk no se dio cuenta","13/04/2023",2);


INSERT INTO usuario(id_usuario, nombre, apellido, nacionalidad, correo, clave, sexo) VALUES (1,"maikol","nieto","Colombia","ms@nieto","12345","Masculino");
INSERT INTO usuario(id_usuario, nombre, apellido, nacionalidad, correo, clave, sexo) VALUES (2,"Raul","basilio","Mongolia","rmore@uni","1234","Sin definir");
INSERT INTO usuario(id_usuario, nombre, apellido, nacionalidad, correo, clave, sexo) VALUES (3,"Yasuri Alejandro","la mas viral","Camerun","layasuri@esquinalacuarta.com","megustalapollanegra123","Trans");
INSERT INTO usuario(id_usuario, nombre, apellido, nacionalidad, correo, clave, sexo) VALUES (4,"Camilo","Molano","Veneco","dientesdepeine@telodoygratis.com","kenglomasrico123","travestis");
INSERT INTO usuario(id_usuario, nombre, apellido, nacionalidad, correo, clave, sexo) VALUES (5,"Roberto","Cuaran","Bolivia","labichota@muak.com","notesuperoAmanda1234","sin definir");