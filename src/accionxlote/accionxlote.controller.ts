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
    UseGuards,
    
  } from '@nestjs/common';

  import { JwtGuard } from '../auth/guard';
  import { AccionxloteService } from './accionxlote.service';

  //import {CreateBookmarkDto,EditBookmarkDto} from './dto';
  
  //@UseGuards(JwtGuard)

  @Controller('accionxlote')
  export class AccionxloteController {
    constructor(
      private AccionxloteService: AccionxloteService,
     
    ) {}
  

    @Get(':tabla/:id')
    getGeneralById(

      @Param('id', ParseIntPipe) id: number,
      @Param('tabla') tabla:string

    ) {
      return this.AccionxloteService.getGeneralById(
            
            id,
            tabla

      );
    }
 
    @Post(':accion')
    accionxlote( 
      @Param('accion') accion:string,
      @Body() dto

    ) 
    {


      return this.AccionxloteService.accionxlote(
        accion,
        dto

      ); 
    }
    
    @Get(':tabla')
    getGeneral(
  
      @Param('tabla') tabla:string

    ) {
      return this.AccionxloteService.getGeneral(
            
        tabla

      );
    }

  }
  