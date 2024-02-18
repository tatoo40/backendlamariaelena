import {
    ForbiddenException,
    Injectable,
  } from '@nestjs/common';
  import { PrismaService } from '../prisma/prisma.service';
  //import {CreateBookmarkDto,EditBookmarkDto} from './dto';
  import { PrismaClientKnownRequestError } from '@prisma/client/runtime';
import { Prisma } from '@prisma/client';
import { ReportesService } from 'src/reportes/reportes.service';
import { UtilesService } from 'src/utiles/utiles.service';
import moment = require('moment');

  @Injectable()
  export class GeneralService {
    
    constructor(private prisma: PrismaService, private ctrlStock: ReportesService) {}
    public model:string = '';
    public field:string = '';
    
    getGeneralById(id: number, tabla:string) {
      
      this.model=tabla;
      //console.log(this.model)
      return this.prisma[this.model].findFirst({
        where: {
          id,
          estado:'S'
        },
      });

    }

    getGeneralByIdField(id, tabla:string, field:string) {
      
      this.model=tabla;
      this.field = field;
      
      var idEvaluo = String(id)
      var countGuiones = idEvaluo.split('-').length - 1;

      //console.log(idEvaluo);
      if (idEvaluo.length === 10 && countGuiones===2){
        //Infiero que es una fecha
         id = new Date(id)

      }else{
        id = parseInt(id);
      }
      
      //console.log(tabla);
      //console.log(id);
      //console.log(field);

      return this.prisma[this.model].findMany({
        where: {    
   
          [this.field]:id,          
          estado:'S'
        },
      });

    }
    
    getGeneral(tabla:string,criterioOrd:string) {
      
      this.model=tabla;
      //console.log(criterioOrd);
      if (criterioOrd===undefined){
        criterioOrd = 'asc'
      }
      //console.log(tabla)
      return this.prisma[this.model].findMany({
        where: {      
          estado:'S'
        },
        orderBy: [
          {
            id: criterioOrd,
          }
        ],
      });
      
    }


    async createGeneral(
      tabla: string,
      dto
    ): Promise<{ status: string, message: string, data?: any }> {
      let pasoProceso = false;
      let mensaje_error = '';
      let tieneError = false;
      let nro_trans = 0;
      let lineasCpfStockaux: any;
      let cpf_log: any;
      let idRegistro: any;
      this.model = tabla;
      delete dto['id'];
    
      const format = 'YYYY-MM-DDT00:00:00.000Z';
      const myDate = dto.fecha;
      const formattedDate = moment(
        myDate,
        'DD/MM/YYYY',
      ).format(format);
    
      switch (tabla) {
        case 'cpt_registros_consumos':
          // En este caso tengo que evaluar si hay stock del producto
          let hayStock = false;
          let ctrlStock: any;
    
          ctrlStock = await this.ctrlStock.getInventarioStk(dto.id_empresa);
    
          const articuloExistente = ctrlStock.some(articulo => articulo.id_articulo === dto.id_articulo);
    
          if (articuloExistente) {
            const articuloEncontrado = ctrlStock.find(articulo => articulo.id_articulo === dto.id_articulo);
    
            if (articuloEncontrado.cantidad >= dto.cantidad) {
              pasoProceso = true;
              nro_trans = await this.obtengoNroTrans();
    
              lineasCpfStockaux = await this.prisma.cpf_stockaux.create({
                data: {
                  nro_trans: nro_trans,
                  cantidad: dto.cantidad,
                  cantidad2: 0,
                  cantidad3: 0,
                  signo: -1,
                  nro_lote: '0',
                  cod_identidad: '0',
                  fecha: dto.fecha,
                  id_motivo_stk: 20,
                  cod_articulo: articuloEncontrado.codigo_articulo,
                  id_unidad_stk: articuloEncontrado.id_unidad_stk,
                  id_empresa: dto.id_empresa,
                  id_estado_stock: 1,
                  id_sector: articuloEncontrado.codigo_sector,
                },
              });
    
              idRegistro = lineasCpfStockaux.id;
              cpf_log = await this.prisma.cpf_log.create({
                data: {
                  nro_trans: nro_trans,
                  id_registro: idRegistro,
                  id_accion: 1,
                  id_seccion: 59,
                  fecha: dto.fecha,
                  descripcion: 'Consumos de insumos',
                  cod_docum: dto.cod_docum,
                  observacion: dto.observaciones,
                  id_empresa: dto.id_empresa
                },
              });
            } else {
              tieneError = true;
              mensaje_error = `El artículo: ${articuloEncontrado.nombre_articulo} existe pero la cantidad disponible no es suficiente.`;
            }
          } else {
            tieneError = true;
            mensaje_error = `El artículo con ID: ${dto.id_articulo} no existe en el inventario.`;
          }
          break;
        default:
          pasoProceso = true;
          break;
      }
    
      if (pasoProceso) {

        console.log(this.model)

        try {
          const general = await this.prisma[this.model].create({
            data: {
              ...dto
            },
          });
          return { status: 'success', message: 'El dato se ha creado correctamente.', data: general };
        } catch (error) {
          if (error instanceof PrismaClientKnownRequestError) {
            if (error.code === 'P2002') {
              throw new ForbiddenException('Credentials taken');
            }
          }
          throw error;
        }
      } else {
        return { status: 'error', message: mensaje_error };
      }
    }
    

    async editGeneralById(
      tabla:string,
      id: number,
      dto,
    ) {
      // get the bookmark by id

      this.model=tabla;

      const objeto =
        await this.prisma[this.model].findUnique({
          where: {
            id: id,
          },
        });
  
      // check if user owns the bookmark
      if (!objeto )
        throw new ForbiddenException(
          'Access to resources denied',
        );
  
      return this.prisma[this.model].update({
        where: {
          id: id,
        },
        data: {
          ...dto,
        },
      });
    }

    async deleteGeneralById(Id:number,tabla:string) {
      
      this.model=tabla;

      {
   
      const objeto =
        await this.prisma[this.model].findFirst({
          where: {
            id: Id,
            estado:'S'
          },
        });
  
      // check if user owns the bookmark
      if (!objeto )
        throw new ForbiddenException(
          'Access to resources denied',
        );
       //console.log(this.model)
        //console.log(tabla);
        //console.log(Id);
      //console.log(objeto)

      await this.prisma[this.model].update({
        where: {
          id: Id,
        },
        data: {
          estado: 'N'
        },
      });
    }



  }
  async obtengoNroTrans() {
    const numerador =
      await this.prisma.numerador.findFirst({
        where: {
          descripcion: 'nro_trans',
          estado: 'S',
        },
      });

    const updateNumerador =
      await this.prisma.numerador.update({
        where: {
          id: numerador.id,
        },
        data: {
          valor: numerador.valor + 1,
        },
      });

    return numerador.valor + 1;
  }

  }
  function withoutProperty(obj, property) {  
    const { [property]: unused, ...rest } = obj

  return rest


  
}