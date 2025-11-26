USE tienda_online;

-- 1. INSERT: Agregar nuevos clientes y pedidos

INSERT INTO Clientes (nombre, apellido, email, direccion)
VALUES 
('Carlos', 'Ramírez', 'carlos.ramirez@example.com', 'Av. Los Robles 321'),
('María', 'Fernández', 'maria.fernandez@example.com', 'Calle Primavera 450'),
('Luis', 'Soto', 'luis.soto@example.com', 'Pasaje 14 Sur');

INSERT INTO Pedidos (fecha_pedido, total, id_cliente)
VALUES
('2025-03-02', 35000.00, 2),
('2025-03-05', 15000.00, 1),
('2025-03-07', 58000.00, 3);

-- 2. UPDATE

-- Actualizar la dirección de un cliente
UPDATE Clientes
SET direccion = 'Nueva Dirección 999'
WHERE email = 'maria.fernandez@example.com';

-- Actualizar el total de un pedido
UPDATE Pedidos
SET total = 62000.00
WHERE id_pedido = 3;

-- Cambiar el correo de un cliente por uno actualizado
UPDATE Clientes
SET email = 'carlos.ramirez2025@example.com'
WHERE id_cliente = 1;

-- 3. DELETE

-- Eliminar un pedido que no fue procesado
DELETE FROM Pedidos
WHERE id_pedido = 2;

-- Eliminar un cliente sin pedidos asociados
DELETE FROM Clientes
WHERE id_cliente = 5;

-- Eliminar pedidos mayores a cierto monto
DELETE FROM Pedidos
WHERE total > 70000;
