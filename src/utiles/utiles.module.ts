import { Module } from '@nestjs/common';
import { UtilesController } from './utiles.controller';
import { UtilesService } from './utiles.service';
import { GanadoService } from 'src/ganado/ganado.service';
import { ClimaService } from 'src/clima/clima.service';


@Module({
  controllers: [UtilesController],
  providers: [UtilesService,GanadoService]
})
export class UtilesModule {}
