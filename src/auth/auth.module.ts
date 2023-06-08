import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { AuthController } from './auth.controller';
import { AuthService } from './auth.service';
import { JwtStrategy } from './strategy';
import { GoogleStrategy } from './strategy/google.strategy';
import { SessionSerializer } from './utils/serializer';

@Module({
  imports: [JwtModule.register({})],
  controllers: [AuthController],
  providers: [JwtStrategy, AuthService,
    GoogleStrategy,{
    provide:'AUTH_SERVICE',
    useClass:AuthService
  }, SessionSerializer],
})
export class AuthModule {}
