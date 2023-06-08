import {
    ForbiddenException,
    Injectable,
  } from '@nestjs/common';
  import { PrismaService } from '../prisma/prisma.service';
  //import {CreateBookmarkDto,EditBookmarkDto} from './dto';
  import { PrismaClientKnownRequestError } from '@prisma/client/runtime';

  import { PrismaClient, Prisma } from '@prisma/client'
import { AccionMasivaLoteCabezal } from './dto/accionmasivalote.dto';
import { AccionMasivaLoteLineas } from './dto/accionmasivaloteLineas.dto';
import { AgregarCpfStockaux } from './dto/agregarcpfstockaux.dto';
  //import obtengoNroTrans from '../helpers/obtengo-nro-trans'

  @Injectable()
  export class AccionxloteService {
    
    constructor(private prisma: PrismaService) {}
    public model:string = '';
    
    
    getGeneralById(id: number, tabla:string) {
      
      this.model=tabla;
        
      return this.prisma[this.model].findFirst({
        where: {
          id,
          estado:'S'
        },
      });

    }
  
    getGeneral(tabla:string) {
      
      this.model=tabla;
      

      return this.prisma[this.model].findMany({
        where: {      
          estado:'S'
        },
      });
      
    }


    async accionxlote(
      accion:string,
      dto
    )
     
    {
     dto=dto.formData;
     dto:AccionMasivaLoteCabezal;
      try {
        
          switch (accion){
            case 'compraganadomasiva':
              //Obtengo el nro de transaccion
              const nro_trans = await this.obtengoNroTrans();
       

              const cabezal =
               await this.prisma.cpt_movimiento_stock.create({
                data: {
    
                  nro_trans: nro_trans,
                  peso_total_real: dto.peso_total_real,
                  peso_total_facturado: dto.peso_total_facturado,
                  cantidad_ganado: dto.cantidad_total,
                  fecha:dto.fecha,
                  serie_guia:dto.serie_guia,
                  nro_guia:dto.nro_guia,
                  valor_dicose: dto.dicose,
                  id_propiedad_ganado:dto.id_propiedad_ganado,
                  cod_articulo:dto.cod_articulo,
                  id_tipo_toma_peso:dto.id_tipo_peso,
                  id_motivo_stk: dto.id_motivo_mov_stk
                  

                }});


                //como proceso las lineas?
                const dtoLineas=dto.lineas;
                dtoLineas:AccionMasivaLoteLineas;     
                
                //console.log(dtoLineas);
                dtoCpfStockaux:AgregarCpfStockaux;  

                const pesoPromedioUnidad = dto.peso_total_facturado/dto.cantidad_total

                for (var i = 0; i < dtoLineas.length; ++i) {
                
                
                
                const lineas =
                await this.prisma.cpp_movimiento_stock.create({
                 data: {
                   nro_trans: nro_trans,
                   cantidad: 1,
                   cantidad2: dtoLineas[i].peso,
                   cantidad3: pesoPromedioUnidad,
                   fecha:dto.fecha,
                   nro_lote:0,
                   cod_identidad:dtoLineas[i].caravana,
                   id_empresa: 1,
                   cod_articulo: dto.cod_articulo,
             
 
                 }});

                 const lineasCpfStockaux =
        
                 await this.prisma.cpf_stockaux.create({
                  data: {
                    nro_trans: nro_trans,
                    cantidad: 1,
                    cantidad2: dtoLineas[i].peso,
                    cantidad3: pesoPromedioUnidad,
                    signo: 1,
                    nro_lote:0,
                    cod_identidad:dtoLineas[i].caravana,                    
                    fecha:dto.fecha,
                    id_motivo_stk:dto.id_motivo_mov_stk,
                    cod_articulo:dto.cod_articulo,
                    id_unidad_stk:1,
                    id_empresa:1,
                    id_estado_stock:1, 
                    id_deposito:1

  
                  }});


                } 
 
            return {
              nro_trans: nro_trans,
              message:'Carga realizada con exito'
            };

            break;
          }


        } catch (error) {

          if (

            error instanceof
            PrismaClientKnownRequestError

          ) {
     
            if (error.code === 'P2002') {
              throw new ForbiddenException(
                'Credentials taken',
              );
            }
          }
          throw error;
        }          
    }


    async obtengoNroTrans() {
      const numerador = await this.prisma.numerador.findFirst({
        where: {
          descripcion:'nro_trans',
          estado:'S'
        },
      });
    
    
      const updateNumerador = await this.prisma.numerador.update({
        where: {
          id: numerador.id,
        },
        data: {
          valor:numerador.valor + 1,
        },
      });
    
    
     
    
      return numerador.valor + 1;
    
    
    }




  }
  