 import {
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';


@Injectable()
export class GanadoService {
  constructor(private prisma: PrismaService) {}

  getGanando() {

    return this.prisma.$transaction([
      this.prisma.$queryRaw`SELECT cod_articulo, nro_lote, cod_identidad, sum(cantidad*signo) Unidad, sum(cantidad2*signo) Peso, sum(cantidad3*signo) Peso_promedio
      FROM cpf_stockaux where id_estado_stock IN(1)  
          GROUP BY cod_articulo, nro_lote, cod_identidad HAVING sum(cantidad*signo)>0`,
   
    ])


 
  }

  getGanadoById(
   
    ganadoId: number,
  ) {
    return this.prisma.$transaction([
      this.prisma.$queryRaw`SELECT cod_articulo, nro_lote, cod_identidad, sum(cantidad*signo) Unidad, sum(cantidad2*signo) Peso, sum(cantidad3*signo) Peso_promedio
      FROM cpf_stockaux where id_estado_stock IN(1) AND cod_identidad = ${ ganadoId }
          GROUP BY cod_articulo, nro_lote, cod_identidad HAVING sum(cantidad*signo)>0`,
   
    ])
  }


 
}
 