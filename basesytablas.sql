-- Active: 1755737509921@@127.0.0.1@3306@m5_ae3_emily
CREATE DATABASE m5_ae3_emily;
USE m5_ae3_emily;

CREATE TABLE clientes (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nombre_cliente VARCHAR (60) NOT NULL,
   direccion VARCHAR (60),
   telefono VARCHAR (9) NOT NULL
);
INSERT INTO clientes (id, nombre_cliente, direccion, telefono) VALUES
(1, 'Juan Pérez', 'calle 8 cassa 33', '5693385'),
(2,'María González', 'calle 10 casa 11', '56933874'),
(3,'Emily Quintana','calle 5 casa 02', '569330855'),
(4,'Felipe Diaz', 'calle 1 casa 20', '56955784'),
(5,'Sara Celery', 'calle 3 casa 8', '569335674');

CREATE TABLE pedidos (
    id_pedidos INT PRIMARY KEY AUTO_INCREMENT,
    id INT,
    CONSTRAINT fk_clientes
        FOREIGN KEY (id) REFERENCES clientes(id),
    fecha DATE,
    total DECIMAL (10,2)
)ENGINE=InnoDB;
INSERT INTO pedidos (id, fecha, total) VALUES
(3,'2025-08-25',5),
(2,'2025-08-25',0.5),
(3,'2025-08-23',6),
(1,'2025-08-23',1),
(4,'2025-08-22',0.5),
(3,'2025-08-21',0.5),
(1,'2025-08-20',8),
(2,'2025-08-19',4),
(4,'2025-08-18',0.5),
(2,'2025-08-17',9);

INSERT INTO pedidos (id, fecha, total) VALUES
(5,'2025-08-10',15);
