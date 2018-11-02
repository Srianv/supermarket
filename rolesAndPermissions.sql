/*Administrador(administrador compañia)(Select,Update)*/

CREATE ROLE rol_administrador;

GRANT create session
TO rol_administrador;

GRANT select
ON CARGO
to rol_administrador;

GRANT update
ON CARGO
to rol_administrador;

GRANT select,update
ON PRODUCTO
to rol_administrador; 

GRANT select,update
ON INVENTARIO
to rol_administrador;

GRANT select,update
ON ENCABEZADO_FACTURA
to rol_administrador; 

GRANT select,update
ON DETALLE_FACTURA
to rol_administrador; 

GRANT select,update
ON COMPRA
to rol_administrador; 

GRANT select,update
ON DETALLE_COMPRA
to rol_administrador; 

GRANT update,select
ON TIPO_CLIENTE
to rol_administrador; 



/*Supervisor(administrador BD)(Delete,Update,Select,Insert)*/

CREATE ROLE rol_supervisor;

GRANT create session
TO rol_supervisor;

GRANT delete,update,select,insert
ON INVENTARIO
to rol_supervisor;

GRANT delete,update,select,insert
ON PRODUCTO
to rol_supervisor;

GRANT delete,update,select,insert
ON CATEGORIA_PRODUCTO
to rol_supervisor;
 
GRANT delete,update,select,insert
ON COMPRA
to rol_supervisor;

GRANT delete,update,select,insert
ON DETALLE_COMPRA
to rol_supervisor;

GRANT delete,update,select,insert
ON MARCA_PRODUCTO
to rol_supervisor;

GRANT delete,update,select,insert
ON DETALLE_FACTURA
to rol_supervisor;

GRANT delete,update,select,insert
ON ENCABEZADO_FACTURA
to rol_supervisor;

GRANT delete,update,select,insert
ON PROVEEDOR
to rol_supervisor;

GRANT delete,update,select,insert
ON CLIENTE
to rol_supervisor;

GRANT delete,update,select,insert
ON EMPLEADO
to rol_supervisor;

GRANT delete,update,select,insert
ON MEDIO_PAGO
to rol_supervisor;

GRANT update,select
ON ESTADO
to rol_supervisor;

GRANT update,select
ON TIPO_CLIENTE
to rol_supervisor;

GRANT select
ON CARGO
to rol_supervisor;

GRANT insert(ID_CARGO)
ON CARGO
to rol_supervisor;

GRANT insert(CARGO)
ON CARGO
to rol_supervisor;


/*Empleado(Select,Insert)*/

CREATE ROLE rol_empleado;

GRANT create session
TO rol_empleado;

GRANT select,insert
ON PRODuCTO
to rol_empleado;

GRANT select,insert
ON DETALLE_COMPRA
to rol_empleado;

GRANT select,insert
ON DETALLE_FACTURA
to rol_empleado;

GRANT select
ON COMPRA
to rol_empleado;

GRANT select
ON ENCABEZADO_FACTURA
to rol_empleado;

GRANT select
ON ESTADO
to rol_empleado;

  
/*Cliente(Select)*/

CREATE ROLE rol_clientes;

GRANT create session
TO rol_clientes;
 
GRANT select 
ON CATEGORIA_PRODUCTO
to rol_clientes; 

GRANT select 
ON MARCA_PRODUCTO
to rol_clientes; 

GRANT select 
ON PRODUCTO
to rol_clientes; 


/*Desarrollador(select)*/

CREATE ROLE rol_desarrollador;

GRANT create session
TO rol_desarrollador;
 
GRANT select
ON INVENTARIO
to rol_desarrollador; 

GRANT select
ON CLIENTE
to rol_desarrollador; 


/*Digitador*(insert)/

CREATE ROLE rol_digitador;

GRANT create session
TO rol_digitador;
 
GRANT insert
ON INVENTARIO
to rol_digitador; 

GRANT insert
ON EMPLEADO
to rol_digitador; 

GRANT insert
ON CLIENTE
to rol_digitador; 

GRANT insert
ON PROVEEDOR
to rol_digitador;

GRANT insert
ON MARCA_PRODUCTO
to rol_digitador; 

GRANT insert
ON CATEGORIA_PRODUCTO
to rol_digitador; 

GRANT insert
ON PRODUCTO
to rol_digitador;
