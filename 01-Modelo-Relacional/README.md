# Modelo Relacional – Gestión de Clientes y Pedidos

## 🗃️ Base de Datos Utilizada
Este ejercicio utiliza una base de datos llamada **`tienda_online`**, que contiene dos tablas relacionadas:

- **Clientes**
- **Pedidos**

La relación se establece mediante una clave foránea:  
Un cliente puede tener muchos pedidos (relación 1:N).

---

## 📄 Estructura de las Tablas

### **Tabla: Clientes**
| Campo       | Tipo          | Descripción |
|-------------|---------------|-------------|
| id_cliente  | INT PK AI     | Identificador único del cliente |
| nombre      | VARCHAR(50)   | Nombre del cliente |
| apellido    | VARCHAR(50)   | Apellido del cliente |
| email       | VARCHAR(100)  | Correo único del cliente |
| direccion   | VARCHAR(150)  | Dirección del cliente |

---

### **Tabla: Pedidos**
| Campo       | Tipo          | Descripción |
|-------------|---------------|-------------|
| id_pedido   | INT PK AI     | Identificador único del pedido |
| fecha_pedido| DATE          | Fecha del pedido |
| total       | DECIMAL(10,2) | Total del pedido |
| id_cliente  | INT FK        | Referencia al cliente que hizo el pedido |

---