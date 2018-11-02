/*Se actualiza cada semana*/

/*Estado del producto*/
CREATE MATERIALIZED VIEW EstadoProd_vista 
BUILD IMMEDIATE
REFRESH START WITH ROUND (SYSDATE + 1)+3/24
NEXT (TRUNC(SYSDATE + 07,'DD'))+ 3/24
AS 
SELECT i.id_inventario,p.nombre_producto,e.estado_producto,fecha_compra
FROM inventario i, producto p, estado e, compra c, detalle_compra d
WHERE i.id_estado=e.id_estado and p.id_producto=i.id_producto and i.id_detallecompra=d.id_detallecompra and 
d.id_compra=c.id_compra
order by(fecha_compra);

/*Rendimiento empleado*/
CREATE MATERIALIZED VIEW VentaEmp_vista
BUILD IMMEDIATE
REFRESH START WITH ROUND(SYSDATE  +1 )+ 23/ 24 
NEXT (TRUNC(SYSDATE + 07,'DD'))+ 23/24
AS
SELECT d.id_detalle,f.id_factura,f.id_empleado as identificacion ,e.nombres as nombre, e.apellidos,f.fecha as fecha_venta
FROM encabezado_factura f, detalle_factura d, empleado e
WHERE f.id_factura=d.id_factura and f.id_empleado=e.id_empleado
order by(f.fecha);

/*Medios de pago utilizados*/
CREATE MATERIALIZED VIEW MedioPago_vista
BUILD IMMEDIATE
REFRESH START WITH ROUND(SYSDATE +1 )+  23/ 24 
NEXT ((SYSDATE + 7) + 23/ 24 )
AS
SELECT a.id_medio_depago , b.tipo_mediopago,a.identificacion,a.fecha
FROM encabezado_factura a, medio_pago b
WHERE a.id_medio_depago=b.id_medio_depago
Order By(a.fecha);

/*Compras*/
CREATE MATERIALIZED VIEW CompraEmp_vista
BUILD IMMEDIATE
REFRESH START WITH ROUND(SYSDATE + 1)+23/24
NEXT ((SYSDATE + 7) + 23/ 24 )
AS
SELECT d.id_detallecompra,c.id_compra,c.id_empleado,a.cargo,p.nombre_producto,m.marca_producto as marca,i.precio_unitario as precio ,c.fecha_compra as f_Compra 
from compra c, empleado e, cargo a,detalle_compra d,producto p, inventario i, marca_producto m
where d.id_compra=c.id_compra and d.id_detallecompra=i.id_detallecompra and i.id_producto=p.id_producto and p.id_marca=m.id_marca
and c.id_empleado=e.id_empleado and e.id_cargo=a.id_cargo
order by(d.id_detallecompra);

/*Control inventario*/
CREATE MATERIALIZED VIEW ControlInv_vista
BUILD IMMEDIATE
REFRESH START WITH ROUND(SYSDATE + 1)+3/24
NEXT (TRUNC(SYSDATE + 07,'DD'))+ 3/24
AS 
SELECT i.id_inventario,p.nombre_producto,m.marca_producto as marca,i.fecha_vencimiento
from inventario i, producto p,marca_producto m
where i.id_producto = p.id_producto and m.id_marca=p.id_marca
order by(i.fecha_vencimiento);

/*Ventas*/
CREATE MATERIALIZED VIEW VentaProd_vista
BUILD IMMEDIATE
REFRESH START WITH ROUND(SYSDATE + 1)+23/24
NEXT (TRUNC(SYSDATE + 07,'DD'))+ 23/24
AS
SELECT d.id_detalle,f.id_factura,d.id_inventario,i.id_producto,p.nombre_producto,m.marca_producto,f.fecha
FROM encabezado_factura f, detalle_factura d, inventario i, producto p, marca_producto m
WHERE f.id_factura=d.id_factura and d.id_inventario=i.id_inventario and i.id_producto=p.id_producto and p.id_marca=m.id_marca
order by(f.fecha);

