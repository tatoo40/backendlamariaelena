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
import axios, { AxiosInstance } from 'axios';


  @Injectable()
  export class ClimaService {


    private client: AxiosInstance;
    constructor(private prisma: PrismaService, private parametros:UtilesService) {


      this.client = axios.create({
        baseURL: 'https://dataservice.accuweather.com/forecasts/v1/daily/5day/',
        params: {
          LOCACION: '',
          APPID: 'wInth8NH4PYETscAg6N3yMbZUGOMrEnw',
        },
      });


    }
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
    
    async getGeneral(id_empresa:number): Promise<object> {
      
      //primero obtengo de parametros de la empresa la locachon y el apikey
      let parametros: any;
      //console.log(id_empresa)
      parametros = await this.parametros.getParametrosEmpresa(id_empresa);
      //console.log(parametros.api_accuweather)
      let url = `https://dataservice.accuweather.com/forecasts/v1/daily/5day/${parametros.locacion_accuweather}?apikey=${parametros.api_accuweather}&language=es-UY&details=true&metric=true`
     // console.log(url)
      const response = await this.client.get(url);
      return response.data;      
  }

  }
