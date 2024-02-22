-- A.
select p.Nombre       as 'nombre del proyecto',
       pr.descripcion as producto
from producto_proyecto pp
         inner join proyecto p on
    pp.proyecto = p.proyecto
         inner join producto pr on
    pp.producto = pr.producto
where pp.proyecto = 1;

-- B.
select t.nombre             as 'Tipo Mensaje',
       count(m.cod_mensaje) as 'Cantidad de mensajes',
       p.nombre             as 'nombre del proyecto',
       pr.descripcion       as producto
from mensaje m
         inner join dbo.formato_mensaje fm on
    fm.cod_formato = m.cod_formato
         inner join dbo.tipo t on
    t.id_tipo = fm.cod_tipo
         inner join producto_proyecto pp on
    m.proyecto = pp.proyecto and m.producto = pp.producto
         inner join proyecto p on
    pp.proyecto = p.proyecto
         inner join producto pr on
    pp.producto = pr.producto
group by p.nombre, pr.descripcion, t.nombre;

--C.
select t.nombre                                                                            as 'Tipo Mensaje',
       count(m.cod_mensaje)                                                                as 'Cantidad de mensajes',
       p.nombre                                                                            as 'nombre del proyecto',
       IIF(count(m.cod_mensaje) = (select count(distinct producto)
                                   from producto_proyecto
                                   where proyecto = pp.proyecto), 'TODOS', pr.descripcion) as producto
from mensaje m
         inner join dbo.formato_mensaje fm on
    fm.cod_formato = m.cod_formato
         inner join dbo.tipo t on
    t.id_tipo = fm.cod_tipo
         inner join producto_proyecto pp on
    m.proyecto = pp.proyecto and m.producto = pp.producto
         inner join proyecto p on
    pp.proyecto = p.proyecto
         inner join producto pr on
    pp.producto = pr.producto
group by p.nombre, t.nombre, pr.descripcion;