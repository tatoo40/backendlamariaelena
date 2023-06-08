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
  import { GeneralService } from './general.service';

  //import {CreateBookmarkDto,EditBookmarkDto} from './dto';
  
  @UseGuards(JwtGuard)
  
  @Controller('general')
  export class GeneralController {
    constructor(
      private generalService: GeneralService,
     
    ) {}
  

    @Get(':tabla/:id')
    getGeneralById(

      @Param('id', ParseIntPipe) id: number,
      @Param('tabla') tabla:string

    ) {
      return this.generalService.getGeneralById(
            
            id,
            tabla

      );
    }
 
    @Post(':tabla')
    createGeneral( 

      @Param('tabla') tabla:string,
      @Body() dto

    ) 
    {
      return this.generalService.createGeneral(
        tabla,
        dto
      );
    }
    
    @Get(':tabla')
    getGeneral(
  
      @Param('tabla') tabla:string

    ) {
      return this.generalService.getGeneral(
            
        tabla

      );
    }

  }
  