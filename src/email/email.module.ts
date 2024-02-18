import { Global, Module } from '@nestjs/common';
import { EmailController } from './email.controller';
import { EmailService } from './email.service';
import { ConfigService } from '@nestjs/config';
@Global()
@Module({
  imports: [
   

  ],
  controllers: [EmailController],
  providers: [EmailService,ConfigService]
})
export class EmailModule {}
