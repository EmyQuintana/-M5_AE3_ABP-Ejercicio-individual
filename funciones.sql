--Proyecta todos los pedidos realizados por un cliente específico, utilizando su ID.
SELECT clientes.nombre_cliente, pedidos.total
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.id;

--Calcula el total de todos los pedidos para cada cliente.
SELECT
    SUM(total) AS total_gastado
FROM
    pedidos
WHERE
    id =2
GROUP BY
    id;

--Calcula el total de todos los pedidos para cada cliente.
SELECT c.id, c.nombre_cliente, COUNT(p.id) AS numero_pedidos, SUM(p.total) AS total_pedidos
FROM pedidos p JOIN Clientes c ON c.id = p.id
GROUP BY p.id;

--Actualiza la dirección de un cliente dado su "id".
UPDATE clientes
SET
    direccion = 'Avenida 1 casa 10'
WHERE
    id = 3;

--Elimina un cliente específico de la tabla "clientes" y todos sus pedidos asociados de la tabla "pedidos".
DELETE FROM pedidos
WHERE id = 4;

DELETE FROM clientes
WHERE id = 5;

SELECT
    nombre_cliente,
    COUNT(p.id) AS numero_pedidos
FROM
    clientes AS c
JOIN
    pedidos AS p ON c.id = p.id
GROUP BY
    c.nombre_cliente
ORDER BY
    numero_pedidos DESC
LIMIT 3;