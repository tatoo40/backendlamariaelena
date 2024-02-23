import { Module } from '@nestjs/common';
import { ClimaController } from './clima.controller';
import { ClimaService } from './clima.service';
import { ReportesService } from 'src/reportes/reportes.service';
import { UtilesService } from 'src/utiles/utiles.service';
import { GanadoService } from 'src/ganado/ganado.service';

@Module({
  controllers: [ClimaController],
  providers: [ClimaService,UtilesService,GanadoService]
})
export class ClimaModule {}
