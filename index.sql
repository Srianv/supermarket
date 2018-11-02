CREATE INDEX inven_id_producto_idx
ON inventario(id_producto);

CREATE INDEX producto_id_marca_idx
ON producto(id_marca);

CREATE INDEX dllefactura_id_factura_idx
ON detalle_factura(id_factura);

CREATE INDEX dllecompra_id_compra_idx
ON detalle_compra(id_compra);

CREATE INDEX producto_id_categoria_idx
ON producto(id_categoria);

CREATE INDEX empleado_id_cargo_idx
ON empleado(id_cargo);
