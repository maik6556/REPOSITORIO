

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4 */;



CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `artista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `album` (`id_album`, `nombre`, `artista`) VALUES
(1, 'Real Hata La Muerte', 1),
(2, 'Vida Buena', 2),
(3, 'Ponte Linda', 3);



CREATE TABLE `artista` (
  `id_artista` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `artista` (`id_artista`, `nombre`, `genero`) VALUES
(1, 'Pirlo Aztaiza', 'Pop'),
(2, 'Yanfri Fonseca', 'Rock'),
(3, 'Yazuri Yamile', 'Blues');



CREATE TABLE `canciones` (
  `id_canciones` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `duracion` int(50) DEFAULT NULL,
  `album` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `canciones` (`id_canciones`, `nombre`, `autor`, `duracion`, `album`) VALUES
(1, 'La Pelea con el diablo', 'Pirlo ', 358, 1),
(2, 'Tu sombra', 'Arjona', 258, 1),
(3, 'Billete Verde', 'Yazuri', 295, 1);



CREATE TABLE `lista_reproduccion` (
  `id_lista_reproduccion` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `duracion` int(100) DEFAULT NULL,
  `canciones` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `lista_reproduccion` (`id_lista_reproduccion`, `nombre`, `duracion`, `canciones`) VALUES
(1, 'Mi lista de éxitos', 1033, 1),
(2, 'Mix de rock clásico', 606, 2),
(3, 'Canciones Favoritas', 744, 3);



CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `lista_reproduccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `usuario` (`id_usuario`, `nombre`, `lista_reproduccion`) VALUES
(1, 'Maikol', 1),
(2, 'Camilo', 2),
(3, 'Raul', 3);


ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `artista` (`artista`);


ALTER TABLE `artista`
  ADD PRIMARY KEY (`id_artista`);


ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_canciones`),
  ADD KEY `album` (`album`);


ALTER TABLE `lista_reproduccion`
  ADD PRIMARY KEY (`id_lista_reproduccion`),
  ADD KEY `canciones` (`canciones`);


ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `lista_reproduccion` (`lista_reproduccion`);


ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artista`) REFERENCES `artista` (`id_artista`);


ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`album`) REFERENCES `album` (`id_album`);


ALTER TABLE `lista_reproduccion`
  ADD CONSTRAINT `lista_reproduccion_ibfk_1` FOREIGN KEY (`canciones`) REFERENCES `canciones` (`id_canciones`);

ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`lista_reproduccion`) REFERENCES `lista_reproduccion` (`id_lista_reproduccion`);
COMMIT;

 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT ;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS ;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION ;
