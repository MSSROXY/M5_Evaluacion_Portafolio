
USE tienda_online;

-- 1. Obtener todos los pedidos realizados por un cliente específico
SELECT p.id_pedido, p.fecha_pedido, p.total
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
WHERE c.email = 'roxy.solano@example.com';

-- 2. Listar todos los clientes registrados
SELECT * FROM Clientes;

-- 3. Listar todos los pedidos con el nombre del cliente
SELECT p.id_pedido, p.fecha_pedido, p.total, c.nombre, c.apellido
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente;

-- 4. Obtener el total de ventas realizadas (suma de todos los pedidos)
SELECT SUM(total) AS total_ventas
FROM Pedidos;

-- 5. Contar cuántos pedidos ha realizado cada cliente
SELECT c.nombre, c.apellido, COUNT(p.id_pedido) AS cantidad_pedidos
FROM Clientes c
LEFT JOIN Pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente;

-- 6. Obtener pedidos dentro de un rango de fechas
SELECT *
FROM Pedidos
WHERE fecha_pedido BETWEEN '2025-01-01' AND '2025-12-31';

-- 7. Obtener pedidos mayores a un monto específico
SELECT *
FROM Pedidos
WHERE total > 20000;

-- 8. Ordenar pedidos por fecha del más reciente al más antiguo
SELECT *
FROM Pedidos
ORDER BY fecha_pedido DESC;