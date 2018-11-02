/*Informción de contacto de proveedores*/

CREATE OR REPLACE VIEW CONTACTO_PROVEEDORESVU
(IDENTIFICACION, NOMBRE, TELEFONO_CONTACTO, CORREO_ELECTRONICO)
AS SELECT ID_PROVEEDOR, (NOMBRES||APELLIDOS),TELEFONO,CORREO_ELECTRONICO
FROM PROVEEDOR;

/*Informción de contacto de empleados*/

CREATE OR REPLACE VIEW INFORMACION_EMPLEADOSVU
(IDENTIFICACION,NOMBRES, TELEFONO_CONTACTO, DIRECCION)
AS SELECT ID_EMPLEADO,NOMBRES||APELLIDOS,TELEFONO, DIRECCION
FROM EMPLEADO;
