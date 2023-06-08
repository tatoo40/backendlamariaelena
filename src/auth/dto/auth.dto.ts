import {
  IsEmail,
  IsNotEmpty,
  IsOptional,
  IsString,
} from 'class-validator';

export class AuthDto {

  @IsOptional()
  nombre: string;

  @IsOptional()
  apellido: string;  

  @IsEmail()
  @IsNotEmpty()
  email: string;

  @IsString()
  @IsNotEmpty()
  hash: string;

  @IsOptional()
  @IsString()
  hashRt: string;

  
  isRegisteredWithGoogle: Boolean
}
