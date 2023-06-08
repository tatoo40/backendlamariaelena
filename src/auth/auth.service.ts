import {
  ForbiddenException,
  Injectable
} from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { AuthDto } from './dto';
import * as argon from 'argon2';
import { PrismaClientKnownRequestError } from '@prisma/client/runtime';
import { JwtService } from '@nestjs/jwt';
import { ConfigService } from '@nestjs/config';
import { UserDetails } from '../auth/utils/types'
import { OAuth2Client } from 'google-auth-library';


@Injectable()

export class AuthService {
  constructor(
    private prisma: PrismaService,
    private jwt: JwtService,
    private config: ConfigService

  ) {}
  
  hashData(data:string){
    return argon.hash(data)
  }
  async signup(dto: AuthDto) {


  
    // generate the password hash
    const hash = await argon.hash(dto.hash);
    // save the new user in the db
    try {
      const usuario = await this.prisma.usuario.create({
        data: {
          
          email: dto.email,
          nombre: dto.nombre,
          apellido: dto.apellido,
          hash,
          hashRt:''
  
        },
      });

      const tokens = await this.getTokens(usuario.id, usuario.email);
      
      await this.updateRtHash(usuario.id,tokens.refresh_Token)
      
      return this.signToken(usuario.id, usuario.email);
      
    } catch (error) {
      
       if (
        error instanceof
        PrismaClientKnownRequestError
      ) {
        if (error.code === 'P2002') {
          throw new ForbiddenException(
             'Ha ocurrido un error'
         

          );
        }
      }
      throw error; 
    }
  }

 
  async updateRtHash(userId:number, rt:string){
 

    const hash = await this.hashData(rt)

    await this.prisma.usuario.update({
      where:{
        id:userId
      },
      data:{
        hashRt:hash
      }
    })


  }


  async signin(dto: AuthDto) {
    // find the user by email

    const usuario =
      await this.prisma.usuario.findUnique({
        where: {
          email: dto.email,
        },
      });
    // if user does not exist throw exception
    if (!usuario)
      throw new ForbiddenException(
        'Credentials incorrect',
      );

    // compare password
    const pwMatches = await argon.verify(
      usuario.hash,
      dto.hash,
    );
    // if password incorrect throw exception
    if (!pwMatches)
      throw new ForbiddenException(
        'Credentials incorrect',
      );
    
       

    const tokens = await this.getTokens(usuario.id, usuario.email);
      
    await this.updateRtHash(usuario.id,tokens.refresh_Token)

    return this.signToken(usuario.id, usuario.email);
  }

  
  async signToken(
    userId: number,
    email: string,
  ): Promise<{ access_token: string }> {
    const payload = {
      sub: userId,
      email,
    };
    const secret = this.config.get('JWT_SECRET');

    const token = await  this.jwt.signAsync(
      payload,
      {
        expiresIn: '15m',
        secret: secret,
      },
    );

    return {
      access_token: token,
    };
  }

  async getTokens(
    userId: number,
    email: string, ){

      
    const[at,rt] = await Promise.all(
      [
        this.jwt.signAsync(
          {
          sub: userId,
          email,
        },
        {
          secret:this.config.get('JWT_SECRET'),
          expiresIn:'15m'
        }
        ),
        this.jwt.signAsync(
          {
          sub: userId,
          email,
        },
        {
          secret:this.config.get('RT_SECRET'),
          expiresIn:'15m'
        }
        )

      ],

    )
 

    return {
      access_token: at,
      refresh_Token:rt
    };
  }



  async logout(userId:number){
    await this.prisma.usuario.updateMany({
      where:{
        id:userId,
        hashRt:{
          not:null,
        }
      },
      data:{
        hashRt:null
      }
    })
  }
  async refreshToken(userId:number, rt:string){

      const user = await this.prisma.usuario.findUnique({
        where:{
          id:userId
        }
      })

      if(!user || !user.hashRt) throw new ForbiddenException('Access denied')

      const pwMatches = await argon.verify(
        rt,
        user.hashRt,
      );
      // if password incorrect throw exception
      if (!pwMatches)
        throw new ForbiddenException(
          'Access denied',
      );
      const tokens = await this.getTokens(user.id, user.email);
      
      await this.updateRtHash(user.id,tokens.refresh_Token);

      return tokens;

  }


  googleLogin(req){
    if(!req.user){
      return 'No user from google'
    }
    return{
      message: 'User Info from google',
      user:req.user
    }
  }

  async googleVerify(token){

    const client = new OAuth2Client(process.env.GOOGLE_AUTH_CLIENT_SECRET)
    const ticket = await client.verifyIdToken({
      idToken:token,
      audience:process.env.GOOGLE_AUTH_CLIENT_ID
    });

    const payload = ticket.getPayload();
    const userid = payload['sub'];
 

    const usuarioDb = await this.prisma.usuario.findUnique({
      where:{
        email:payload.email
      }

    })
    if (!usuarioDb){

        const usuario = await this.prisma.usuario.create({
          data: {
            
            email: payload.email,
            nombre: payload.given_name,
            apellido: payload.family_name,
            hash:'@@@',
            hashRt:'',
            isRegisteredWithGoogle:true
    
          },
        });

        const tokens = await this.getTokens(usuario.id, usuario.email);
        
        await this.updateRtHash(usuario.id,tokens.refresh_Token)
        
        return this.signToken(usuario.id, usuario.email);            

    }else{

        await this.prisma.usuario.updateMany({
          where:{
            id:usuarioDb.id
          },
          data:{
            isRegisteredWithGoogle:true
          }
        })

        return this.signToken(usuarioDb.id, usuarioDb.email); 

    }

      

  }


  async validateUser(details:UserDetails)
    {
      //console.log('AuthService');
      //console.log(details);

      const user = await this.prisma.usuario.findUnique({
        where:{
          email:details.email
        } 
      })

      if(user) return user;

  }

  async findUser(id: number) {
    const user = await this.prisma.usuario.findFirst({ 
      where:{
        id:id
      }  
    });
    return user;
  }


}
