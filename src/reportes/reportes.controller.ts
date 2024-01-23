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
  import { ReportesService } from './reportes.service';
import { Public } from 'src/auth/decorator';

  //import {CreateBookmarkDto,EditBookmarkDto} from './dto';
  
  @UseGuards(JwtGuard)
  
  @Controller('reportes')
  export class ReportesController {
    constructor(
      private generalService: ReportesService,
     
    ) {}
  
    
    @Get(':id_empresa/inventariostk')
    getInventarioStk(

      @Param('id_empresa', ParseIntPipe) id_empresa: number,

    ) {
      return this.generalService.getInventarioStk(
        id_empresa
      );
    }
 
    



  }
  