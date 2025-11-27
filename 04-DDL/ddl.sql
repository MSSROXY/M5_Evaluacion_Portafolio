USE tienda_online;

-- 1. Crear una tabla nueva (ejemplo: empleados)
CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    cargo VARCHAR(100)
);

-- 2. CREATE TABLE: Crear una tabla de categorías de productos

CREATE TABLE Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(150)
);

-- 3. ALTER TABLE: Agregar una columna a la tabla Empleados

ALTER TABLE Empleados
ADD email VARCHAR(100);

-- 4. ALTER TABLE: Modificar tipo de dato en salario

ALTER TABLE Empleados
MODIFY salario DECIMAL(12,2);

-- 5. DROP TABLE: Eliminar tablas
DROP TABLE IF EXISTS Categorias;
