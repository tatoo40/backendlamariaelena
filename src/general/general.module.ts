import { Module } from '@nestjs/common';
import { GeneralController } from './general.controller';
import { GeneralService } from './general.service';
import { ReportesService } from 'src/reportes/reportes.service';
import { UtilesService } from 'src/utiles/utiles.service';

@Module({
  controllers: [GeneralController],
  providers: [GeneralService , ReportesService]
})
export class GeneralModule {}
