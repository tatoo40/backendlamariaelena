import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';

import { AuthModule } from './auth/auth.module';
import { UserModule } from './user/user.module';
import { UsuarioModule } from './usuario/usuario.module';
import { BookmarkModule } from './bookmark/bookmark.module';
import { PrismaModule } from './prisma/prisma.module';
import { EmpresaModule } from './empresa/empresa.module';
import { GeneralModule } from './general/general.module';
import { APP_GUARD } from '@nestjs/core';
import { AtGuard } from './auth/guard';
import { PassportModule } from '@nestjs/passport';
import { AccionxloteModule } from './accionxlote/accionxlote.module';
import { GanadooModule } from './ganado/ganado.module';
@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
    }),
    AuthModule,
    UserModule,
    BookmarkModule,
    PrismaModule,
    EmpresaModule,
    UsuarioModule,
    GeneralModule,
    AccionxloteModule,
    GanadooModule,
    PassportModule.register({session:true})
  ],
  providers:[
    {
    provide:APP_GUARD,
    useClass:AtGuard,
    }
]
})
export class AppModule {}
