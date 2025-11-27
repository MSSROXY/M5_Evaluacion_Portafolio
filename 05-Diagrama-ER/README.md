# Modelo de Datos – Tienda en Línea

Este documento describe el modelo de datos diseñado para una tienda en línea. Incluye las entidades principales, sus atributos y las relaciones entre ellas.

---

## 1. Entidades y atributos

### **1. Clientes**
Almacena la información de los clientes.

**Atributos:**
- id_cliente (PK)
- nombre
- apellido
- email
- direccion

---

### **2. Pedidos**
Registra los pedidos realizados por los clientes.

**Atributos:**
- id_pedido (PK)
- fecha
- total
- id_cliente (FK)

---

### **3. Productos**
Almacena la información de los productos disponibles.

**Atributos:**
- id_producto (PK)
- nombre
- descripcion
- precio
- stock

---

### **4. Detalle_Pedido (Productos_has_Pedidos)**
Tabla intermedia que conecta productos y pedidos.

**Atributos:**
- id_producto (FK)
- id_pedido (FK)
- cantidad
- total

---

### **5. Pago**
Registra la información de los pagos realizados por los pedidos.

**Atributos:**
- id_pago (PK)
- monto
- id_pedido (FK)
- id_metodo_pago (FK)

---

### **6. Metodo_Pago**
Lista los métodos de pago disponibles.

**Atributos:**
- id_metodo_pago (PK)
- nombre

---

## 2. Relaciones y cardinalidades

### **Clientes ↔ Pedidos**
- Relación: **1 a N**
- Un cliente puede tener varios pedidos.
- Un pedido pertenece a un solo cliente.

---

### **Pedidos ↔ Pago**
- Relación: **1 a 1**
- Cada pedido tiene un único registro de pago.
- Cada pago corresponde a un solo pedido.

---

### **Pago ↔ Metodo_Pago**
- Relación: **1 a 1**
- Un método de pago puede ser usado por varios pagos.
- Cada pago utiliza un solo método.

---

### **Pedidos ↔ Productos (vía Detalle_Pedido)**
- Relación: **N a M**
- Un pedido puede incluir varios productos.
- Un producto puede estar en varios pedidos.
- La tabla **Detalle_Pedido** resuelve esta relación.

---

## 3. Tabla intermedia: Detalle_Pedido

Esta tabla existe para resolver la relación muchos a muchos entre **Pedidos** y **Productos**.  
Además almacena información específica del pedido, como **cantidad** y **total por producto**.
