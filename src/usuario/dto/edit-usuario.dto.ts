import {
  IsBoolean,
    IsEmail,
    IsOptional,
    IsString,
  } from 'class-validator';
  
  export class EditUsuarioDto {
    @IsEmail()
    @IsOptional()
    email?: string;
  
    @IsString()
    @IsOptional()
    nombre?: string;
  
    @IsString()
    @IsOptional()
    apellido?: string;

    @IsString()
    @IsOptional()
    hashRt?: string;
  
    @IsBoolean()
    @IsOptional()
    isRegisteredWithGoogle?: boolean;
    
  }
  