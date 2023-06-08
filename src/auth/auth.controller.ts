import {
  Body,
  Controller,
  Get,
  HttpCode,
  HttpStatus,
  Post,
  UseGuards,
  Req
} from '@nestjs/common';

import { AuthService } from './auth.service';
import { AuthDto } from './dto';
import { AtGuard, GoogleAuthGuard, RtGuard } from './guard';
import { Public,GetCurrentUserId,GetCurrentUser } from './decorator';


@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @Public()
  @HttpCode(HttpStatus.CREATED)
  @Post('signup')
  signup(@Body() dto: AuthDto) {
    return this.authService.signup(dto);
  }

  @Public()
  @HttpCode(HttpStatus.OK)
  @Post('signin')
  signin(@Body() dto: AuthDto) {
    //console.log(dto)
    return this.authService.signin(dto);
  }
  
  @UseGuards(AtGuard)
  @HttpCode(HttpStatus.OK)
  @Post('logout')
  logout(@GetCurrentUserId() userId:number){

    
    return this.authService.logout(userId); 


  }

  @Public()
  @UseGuards(RtGuard)
  @HttpCode(HttpStatus.OK)
  @Post('refresh')
  refreshToken(
    @GetCurrentUserId() userId:number,
    @GetCurrentUser('refreshToken') refreshToken:string){

    return this.authService.refreshToken(userId,refreshToken); 

  }

  @Public()
  @Post('google/login')
  //@UseGuards(GoogleAuthGuard)
  async googleVerify(@Body('token') token) {
    
    try{
      
      const newToken = await this.authService.googleVerify(token)
      
      return { 
              ok:true,
              msg: 'Google Authentication',
              newToken  
              };

    }catch(error){

      return { 
             ok:false, 
             msg: 'Error en autenticacion de Google',
             error 
            };    
    }

  }

  @Public()
  @Get('login/renew')
  //@UseGuards(GoogleAuthGuard)
  handleRedirect() {
    return { msg: 'OK' };
  }



}
