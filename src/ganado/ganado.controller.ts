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
import { GetUser } from '../auth/decorator';
import { JwtGuard } from '../auth/guard';
import { GanadoService } from './ganado.service';

@UseGuards(JwtGuard)

@Controller('ganado')
export class GanadoController {
  constructor(
    private ganadoService: GanadoService,
  ) {}

  @Get()
  getGanando() {
    return this.ganadoService.getGanando(

    );
  }

  @Get(':id')
  getGanadoById(

    @Param('id', ParseIntPipe) ganadoId: number,
  ) {
    return this.ganadoService.getGanadoById(
   
      ganadoId,
    );
  }

}
