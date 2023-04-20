CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    imagen VARCHAR(100) NOT NULL
);

CREATE TABLE ProductoPedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_producto) REFERENCES producto(id)
);

CREATE TABLE pago (
    id INT PRIMARY KEY AUTO_INCREMENT,
    metodo VARCHAR(50) NOT NULL,
    fecha_pago DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_pedido DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_pago INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_pago) REFERENCES pago(id)
);

ALTER TABLE ProductoPedidos ADD CONSTRAINT FK_PedidosProductos_Pedidos FOREIGN KEY (id_pedido) REFERENCES pedido(id);
ALTER TABLE ProductoPedidos ADD CONSTRAINT FK_PedidosProductos_Productos FOREIGN KEY (id_producto) REFERENCES producto(id);
ALTER TABLE pedido ADD CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (id_cliente) REFERENCES cliente(id);
ALTER TABLE pedido ADD CONSTRAINT FK_Pedidos_Pagos FOREIGN KEY (id_pago) REFERENCES pago(id);