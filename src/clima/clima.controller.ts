import {
    Body,
    Controller,
    Delete,
    Get,
    HttpCode,
    HttpStatus,
    Param,
    ParseIntPipe,
    Patch,
    Post,
    Query,
    UseGuards,
    
  } from '@nestjs/common';

  import { JwtGuard } from '../auth/guard';
  import { ClimaService } from './clima.service';
import { Public } from 'src/auth/decorator';

  //import {CreateBookmarkDto,EditBookmarkDto} from './dto';
  
  //@UseGuards(JwtGuard)
  
  @Controller('clima')
  export class ClimaController {
    constructor(
      private generalService: ClimaService,
     
    ) {}
  
    @Public()
    @Get(':id_empresa')
    getGeneral(
  
      @Param('id_empresa') id_empresa:number,

    ) {
      
      //console.log(orden)
      return this.generalService.getGeneral(
            
        id_empresa

      );



    }




  }
  