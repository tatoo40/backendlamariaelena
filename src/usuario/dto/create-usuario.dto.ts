import {
  IsNotEmpty,
  IsOptional,
  IsString,
  IsEmail,
  IsInt
} from 'class-validator';

export class CreateUsuarioDto {


 
  @IsInt()
  @IsNotEmpty()
  id_mod: number;
  
  @IsString()
  @IsNotEmpty()
  telefono_contacto: string;

  @IsNotEmpty()
  hash: string;

  //@IsNotEmpty()
  hashRt: string;
  
  @IsNotEmpty()
  @IsEmail()
  email: string;

  @IsString()
  @IsNotEmpty()
  nombre: string;

  @IsString()
  @IsNotEmpty()
  apellido: string;

  //@IsNotEmpty()
  isRegisteredWithGoogle: boolean;

}
