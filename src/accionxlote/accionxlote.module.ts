import { Module } from '@nestjs/common';
import { AccionxloteController } from './accionxlote.controller';
import { AccionxloteService } from './accionxlote.service';

@Module({
  controllers: [AccionxloteController],
  providers: [AccionxloteService]
})
export class AccionxloteModule {}
