import {
    ForbiddenException,
    Injectable,
  } from '@nestjs/common';
  import { PrismaService } from '../prisma/prisma.service';
  //import {CreateBookmarkDto,EditBookmarkDto} from './dto';
  import { PrismaClientKnownRequestError } from '@prisma/client/runtime';
import { Prisma } from '@prisma/client';

  @Injectable()
  export class ReportesService {
    
    constructor(private prisma: PrismaService) {}
    public model:string = '';
    public field:string = '';
    
    getInventarioStk(id_empresa:number) {
      
      return this.prisma.$queryRaw`SELECT  a.id id_articulo, f.cod_articulo codigo_articulo, a.nombre nombre_articulo,f.nro_lote, f.cod_identidad, dep.id codigo_deposito, dep.nombre as nombre_deposito, f.id_sector codigo_sector, d.nombre as nombre_sector,SUM(f.cantidad*f.signo) cantidad,
      SUM(f.cantidad2*f.signo) kilos,SUM(f.cantidad3*f.signo) kilos_dos, a.id_categoria_ganado codigo_categoria_ganado, g.descripcion nombre_categoria_ganado,
      a.id_marca_ganado codigo_marca_ganado, m.descripcion nombre_marca_ganado,un.descripcion_corta, tart.id as id_tipo_articulo, tart.descripcion as descripcion_tart, d.latitud, d.longitud,a.id_tipo_articulo,
      a.id_unidad_stk
            from cpf_stockaux f, articulos a, sectores d, categorias_ganado g, marcas_ganado m, 
			depositos dep, unidades un, tipo_articulo tart
            where f.estado = 'S'
            AND f.id_empresa = ${id_empresa}
            AND a.estado = 'S'
            AND a.id_empresa = ${id_empresa}
          AND f.cod_articulo = a.cod_articulo
          AND f.id_estado_stock=1
          AND f.id_sector = d.id
          AND d.id_deposito = dep.id
          AND f.id_empresa = ${id_empresa}
          AND a.id_categoria_ganado =g.id
          AND a.id_marca_ganado =m.id
          AND un.id = a.id_unidad_stk
		  AND tart.id = a.id_tipo_articulo
      GROUP BY  a.id, f.cod_articulo, a.nombre,f.nro_lote, f.cod_identidad, dep.id, dep.nombre, f.id_sector, d.nombre, 
      a.id_categoria_ganado, g.descripcion, a.id_marca_ganado, m.descripcion,un.descripcion_corta,tart.id,tart.descripcion, d.latitud, d.longitud,a.id_tipo_articulo,
      a.id_unidad_stk
      HAVING SUM(f.cantidad*f.signo)>0`;


    

  }

  getComprasGanado(id_empresa:number) {
      
    return this.prisma.$queryRaw`SELECT c.id, c.nro_trans, c.id_moneda, c.id_titular, c.fecha, c.importe_mo, 
    c.serie_fact_prov, c.nro_fact_prov,  c.importe_total_mo,s.cod_articulo, s.cantidad, s.peso, t.nombre_fantasia,
    ep.descripcion
    FROM public.cpt_fact_prov c, (SELECT nro_trans, cod_articulo, SUM(cantidad*signo) cantidad, sum(cantidad2*signo) peso
                   FROM cpf_stockaux s 
                    WHERE s.estado = 'S'
                    AND s.id_empresa=  ${id_empresa}
                   GROUP BY nro_trans, cod_articulo) s, articulos a, titulares t, cpt_pago_fact_prov p,
                   estado_pago ep
    WHERE c.estado='S'
    AND c.id_empresa =  ${id_empresa}
    AND s.nro_trans = c.nro_trans_ref
    AND s.cod_articulo = a.cod_articulo
    AND a.id_tipo_articulo=1
    AND c.id_titular = t.id
    AND c.nro_trans = p.nro_trans
    AND p.id_estado_pago  = ep.id
    AND a.estado = 'S'
    AND ep.estado = 'S'
    AND t.estado = 'S'
    AND p.estado = 'S'`;

}


getComprasInsumo(id_empresa:number) {
      
  return this.prisma.$queryRaw`SELECT c.id, c.nro_trans, c.id_moneda, c.id_titular, c.fecha, c.importe_mo, 
  c.serie_fact_prov, c.nro_fact_prov,  c.importe_total_mo,s.cod_articulo, s.cantidad, s.peso, t.nombre_fantasia,
  ep.descripcion, u.descripcion_corta as unidad_stock
  FROM public.cpt_fact_prov c, (SELECT s.nro_trans, s.cod_articulo, SUM(s.cantidad*s.signo) cantidad, sum(s.cantidad2*s.signo) peso
                 FROM cpf_stockaux s, articulos a 
                  WHERE s.estado = 'S'
                  AND s.id_empresa= ${id_empresa}
                  AND s.cod_articulo = a.cod_articulo
                  AND a.estado='S'
                  AND a.id_empresa=${id_empresa}
                  AND a.id_tipo_articulo IN (2,3,4)
                 GROUP BY s.nro_trans, s.cod_articulo) s, articulos a, titulares t, cpt_pago_fact_prov p,
                 estado_pago ep, unidades u
  WHERE c.estado='S'
  AND c.id_empresa = ${id_empresa}
  AND s.nro_trans = c.nro_trans
  AND s.cod_articulo = a.cod_articulo
  AND a.id_tipo_articulo IN (2,3,4)
  AND c.id_titular = t.id
  AND c.nro_trans = p.nro_trans
  AND p.id_estado_pago  = ep.id
  AND a.estado = 'S'
  AND ep.estado = 'S'
  AND t.estado = 'S'
  AND p.estado = 'S'
  AND a.id_unidad_stk= u.id`;




}


getConsumos(id_empresa:number) {
      
  return this.prisma.$queryRaw`select cpf.fecha, cpf.cod_articulo, art.nombre, SUM(cpf.cantidad*cpf.signo) cantidad, un.descripcion_corta
  from cpf_consumos cpf, articulos art, unidades un
  WHERE cpf.id_empresa=${id_empresa}
  AND cpf.cod_articulo = art.cod_articulo
  AND cpf.estado='S'
  AND art.estado='S'
  AND art.estado='S'
  AND un.id = art.id_unidad_stk
  GROUP BY cpf.fecha, cpf.cod_articulo, art.nombre, un.descripcion_corta`;




}

getMovimientosAnimales(id_empresa:number){

  return this.prisma.$queryRaw`select distinct cpf.nro_trans, cpf.cod_articulo, cpf.nro_lote, cpf.cod_identidad, origen.id_sector_origen, origen.nombre_deposito_origen,
  origen.nombre_sector_origen, destino.id_sector_destino, destino.nombre_deposito_destino, destino.nombre_sector_destino
  from cpf_stockaux cpf,
  (select c.nro_trans, c.cod_identidad, c.id_sector id_sector_origen, dep.nombre nombre_deposito_origen, sec.nombre nombre_sector_origen
   from cpf_stockaux c, sectores sec, depositos dep
  where c.estado='S' AND c.id_empresa= ${id_empresa}
  AND c.signo = -1
  AND c.id_motivo_stk=6
  AND c.id_sector = sec.id
  AND  dep.id = sec.id_deposito
  AND dep.id_empresa= ${id_empresa}
  AND dep.estado='S'
  AND sec.id_empresa= ${id_empresa}
  AND sec.estado='S'
  order by c.nro_trans) origen,
  (select c.nro_trans, c.cod_identidad, c.id_sector id_sector_destino, dep.nombre nombre_deposito_destino, sec.nombre nombre_sector_destino
   from cpf_stockaux c, sectores sec, depositos dep
  where c.estado='S' AND c.id_empresa= ${id_empresa}
  AND c.signo = 1
  AND c.id_motivo_stk=6
  AND c.id_sector = sec.id
  AND  dep.id = sec.id_deposito
  AND dep.id_empresa= ${id_empresa}
  AND dep.estado='S'
  AND sec.id_empresa= ${id_empresa}
  AND sec.estado='S'
  order by c.nro_trans) destino
  WHERE origen.nro_trans =destino.nro_trans
  AND origen.cod_identidad = destino.cod_identidad
  AND cpf.cod_identidad = origen.cod_identidad
  AND cpf.cod_identidad = destino.cod_identidad
  AND cpf.id_empresa= ${id_empresa}
  AND cpf.estado='S'
  AND cpf.nro_trans = destino.nro_trans
  AND cpf.nro_trans= origen.nro_trans
  ORDER By cpf.nro_trans`;
  
  
}


getSanidad(id_empresa:number) {
      
  return this.prisma.$queryRaw`SELECT s.nro_trans, s.fecha, s.nro_lote, s.cod_identidad, s.cod_articulo, a.nombre, SUM(cantidad2*signo) Kilos,
  m.descripcion, m.cod_articulo, m.dosis, c.nro_trans, c.codigo_articulo_consumido,
  c.nombre_articulo_consumido, c.descripcion_corta, c.cantidad_consumida,
   SUM(cantidad2*signo) Kilos, c.cantidad_consumida, m.dosis, td.id,
   CASE WHEN (td.id = 1 ) THEN SUM(cantidad2*signo)*m.dosis ELSE m.dosis END cantidad_consumida_unidad
FROM cpf_registro_sanitario s, articulos a, motivos_sanitarios m,(select s.nro_trans, a.cod_articulo  as codigo_articulo_consumido, a.nombre as nombre_articulo_consumido, u.descripcion_corta, sum(s.cantidad*s.signo) as cantidad_consumida
  from cpf_consumos s, articulos a, unidades u
  where s.estado ='S'
  AND a.estado = 'S'
  AND a.id_empresa=${id_empresa}
  AND s.id_empresa=${id_empresa}
  AND u.id = s.id_unidad_stk
  AND s.cod_articulo = a.cod_articulo
GROUP BY s.nro_trans, a.cod_articulo, a.nombre, u.descripcion_corta) c,tipos_dosis td
WHERE s.estado = 'S'
AND s.id_empresa= ${id_empresa}
AND td.id = m.id_tipo_dosis
AND s.cod_articulo = a.cod_articulo
AND a.estado='S'
AND a.id_empresa=${id_empresa}
AND m.estado='S'
AND m.id_empresa=${id_empresa}
AND s.id_motivo_sanitario = m.id
AND c.nro_trans = s.nro_trans
AND c.codigo_articulo_consumido = m.cod_articulo
--AND s.nro_trans = 404
GROUP BY  s.nro_trans, s.fecha, m.dosis, s.nro_lote, s.cod_identidad, s.cod_articulo, a.nombre, m.descripcion, m.cod_articulo,
c.nro_trans, c.codigo_articulo_consumido, c.nombre_articulo_consumido, c.descripcion_corta, c.cantidad_consumida,m.dosis, td.id`;

}



getRomaneos(id_empresa:number) {
      
  return this.prisma.$queryRaw`SELECT t.id, t.nro_trans, t.fecha, t.importe_total_mo, t.importe_total_tr, t.importe_total_mn, t.cantidad_animales,
  t.cantidad_kilos_salida,
  t.cantidad_kilos_declarados, t.cantidad_kilos_cuarta_balanza, t.porcentaje_rendimiento,t.tc, t.id_titular,
  ti.nombre_fantasia, t.nro_romaneo, t.nro_tropa,
  p.precio_unitario,p.importe_total_mn importe_mn_ganado, p.importe_total_tr importe_tr_ganado,
  p.kilos_salida kilos_salida_individuo, p.kilos_calc_declarado kilos_declarados_individuo,
  p.kilos_calc_cuarta_balanza kilos_cuarta_balanza_individuo,p.cod_identidad
  FROM cpt_ingresoromaneo t, titulares ti, cpp_ingresoromaneo p
WHERE t.id_empresa = ${id_empresa}
AND t.estado='S'
AND t.id_titular = ti.id
AND ti.estado='S'
AND ti.id_empresa=${id_empresa}
AND t.nro_trans = p.nro_trans`;

}


}
  function withoutProperty(obj, property) {  
    const { [property]: unused, ...rest } = obj

  return rest
}