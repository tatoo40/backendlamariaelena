import {
    ForbiddenException,
    Injectable,
  } from '@nestjs/common';
  import { PrismaService } from '../prisma/prisma.service';
  //import {CreateBookmarkDto,EditBookmarkDto} from './dto';
  import { PrismaClientKnownRequestError } from '@prisma/client/runtime';

  @Injectable()
  export class GeneralService {
    
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


    async createGeneral(
      tabla:string,
      dto
    ) 
    {
      try {

          this.model=tabla;
        
          const general =
            await this.prisma[this.model].create({
              data: {
                ...dto
              },
            });
      
          return [this.model];

        } catch (error) {

          if (

            error instanceof
            PrismaClientKnownRequestError

          ) {
            console.log('essssssssssssss')
            console.log(error.code)
            if (error.code === 'P2002') {
              throw new ForbiddenException(
                'Credentials taken',
              );
            }
          }
          throw error;
        }          
    }


  }
  