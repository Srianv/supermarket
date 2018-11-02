CREATE OR REPLACE TRIGGER tggr_inventario
AFTER DELETE OR INSERT OR UPDATE OF precio_unitario ON INVENTARIO
FOR EACH ROW
DECLARE
usuario varchar2(50);
fecha varchar2(50);
BEGIN
Select user
Into usuario
from dual;
Select TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS')
Into fecha
from dual;
IF inserting THEN
INSERT INTO AUD_INVENTARIO
VALUES (usuario,fecha,'se ha insertado un precio: ' || :new.precio_unitario);

ELSIF updating THEN
INSERT INTO AUD_INVENTARIO
VALUES (usuario,fecha,'se ha modificado el precio: ' || :old.precio_unitario ||' a '||:new.precio_unitario);

ELSE
INSERT INTO AUD_INVENTARIO
VALUES (usuario,fecha,'se ha elminado el precio' || :old.precio_unitario );

END IF;
END tggr_inventario;
/


CREATE OR REPLACE TRIGGER tggr_empleado
AFTER DELETE OR INSERT OR UPDATE OF id_empleado ON EMPLEADO
FOR EACH ROW
DECLARE
usuario varchar2(50);
fecha varchar2(50);
BEGIN
Select user
Into usuario
from dual;
Select TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS')
Into fecha
from dual;
IF inserting THEN
INSERT INTO AUD_EMPLEADO
VALUES (usuario,fecha,'se ha insertado un identifcador: ' || :new.id_empleado);

ELSIF updating THEN
INSERT INTO AUD_EMPLEADO
VALUES (usuario,fecha,'se ha modificado el identificador: ' || :old.id_empleado ||' a '||:new.id_empleado);

ELSE
INSERT INTO AUD_EMPLEADO
VALUES (usuario,fecha,'se ha elminado el identificador' || :old.id_empleado);

END IF;
END tggr_empleado;
/


CREATE OR REPLACE TRIGGER tggr_proveedor
AFTER DELETE OR INSERT OR UPDATE OF id_proveedor ON PROVEEDOR
FOR EACH ROW
DECLARE
usuario varchar2(50);
fecha varchar2(50);
BEGIN
Select user
Into usuario
from dual;
Select TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS')
Into fecha
from dual;
IF inserting THEN
INSERT INTO AUD_PROVEEDOR
VALUES (usuario,fecha,'se ha insertado un identificador: ' || :new.id_proveedor);

ELSIF updating THEN
INSERT INTO AUD_PROVEEDOR
VALUES (usuario,fecha,'se ha modificado el identificador: ' || :old.id_proveedor ||' a '||:new.id_proveedor);

ELSE
INSERT INTO AUD_PROVEEDOR
VALUES (usuario,fecha,'se ha elminado el identificador:' || :old.id_proveedor );

END IF;
END tggr_proveedor;
/


CREATE OR REPLACE TRIGGER tggr_producto
AFTER DELETE OR INSERT OR UPDATE OF id_producto ON PRODUCTO
FOR EACH ROW
DECLARE
usuario varchar2(50);
fecha varchar2(50);
BEGIN
Select user
Into usuario
from dual;
Select TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS')
Into fecha
from dual;
IF inserting THEN
INSERT INTO AUD_PRODUCTO
VALUES (usuario,fecha,'se ha insertado un identificador: ' || :new.id_producto);

ELSIF updating THEN
INSERT INTO AUD_PRODUCTO
VALUES (usuario,fecha,'se ha modificado el identificador: ' || :old.id_producto ||' a '||:new.id_producto);

ELSE
INSERT INTO AUD_PRODUCTO
VALUES (usuario,fecha,'se ha elminado el identificador:' || :old.id_producto );

END IF;
END tggr_producto;
/


CREATE OR REPLACE TRIGGER tggr_dllcompra
AFTER DELETE OR INSERT OR UPDATE OF id_detallecompra ON DETALLE_COMPRA
FOR EACH ROW
DECLARE
usuario varchar2(50);
fecha varchar2(50);
BEGIN
Select user
Into usuario
from dual;
Select TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS')
Into fecha
from dual;
IF inserting THEN
INSERT INTO AUD_DETALLE_COMPRA
VALUES (usuario,fecha,'se ha insertado un identificador: ' || :new.id_detallecompra);

ELSIF updating THEN
INSERT INTO AUD_DETALLE_COMPRA
VALUES (usuario,fecha,'se ha modificado el identificador: ' || :old.id_detallecompra ||' a '||:new.id_detallecompra);

ELSE
INSERT INTO AUD_DETALLE_COMPRA
VALUES (usuario,fecha,'se ha elminado el identificador:' || :old.id_detallecompra );

END IF;
END tggr_dllcompra;
/


CREATE OR REPLACE TRIGGER tggr_dllfactura
AFTER DELETE OR INSERT OR UPDATE OF id_detalle ON DETALLE_FACTURA
FOR EACH ROW
DECLARE
usuario varchar2(50);
fecha varchar2(50);
BEGIN
Select user
Into usuario
from dual;
Select TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS')
Into fecha
from dual;
IF inserting THEN
INSERT INTO AUD_DETALLE_FACTURA
VALUES (usuario,fecha,'se ha insertado un identificador: ' || :new.id_detalle);

ELSIF updating THEN
INSERT INTO AUD_DETALLE_FACTURA
VALUES (usuario,fecha,'se ha modificado el identificador: ' || :old.id_detalle ||' a '||:new.id_detalle);

ELSE
INSERT INTO AUD_DETALLE_FACTURA
VALUES (usuario,fecha,'se ha elminado el identificador:' || :old.id_detalle);

END IF;
END tggr_dllfactura;
/