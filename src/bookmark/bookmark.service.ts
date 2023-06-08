 import {
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import {
  CreateBookmarkDto,
  EditBookmarkDto,
} from './dto';

@Injectable()
export class BookmarkService {
  constructor(private prisma: PrismaService) {}

  getBookmarks() {
    return this.prisma.bookmark.findMany({
 
    });
  }

  getBookmarkById(
   
    bookmarkId: number,
  ) {
    return this.prisma.bookmark.findFirst({
      where: {
        id: bookmarkId
      
      },
    });
  }

  async createBookmark(
  
    dto: CreateBookmarkDto,
  ) {
    const bookmark =
      await this.prisma.bookmark.create({
        data: {
      
          ...dto,
        },
      });

    return bookmark;
  }

  async editBookmarkById(

    bookmarkId: number,
    dto: EditBookmarkDto,
  ) {
    // get the bookmark by id
    const bookmark =
      await this.prisma.bookmark.findUnique({
        where: {
          id: bookmarkId,
        },
      });

    // check if user owns the bookmark
    if (!bookmark )
      throw new ForbiddenException(
        'Access to resources denied',
      );

    return this.prisma.bookmark.update({
      where: {
        id: bookmarkId,
      },
      data: {
        ...dto,
      },
    });
  }

  async deleteBookmarkById(

    bookmarkId: number,
  ) {
    const bookmark =
      await this.prisma.bookmark.findUnique({
        where: {
          id: bookmarkId,
        },
      });

    // check if user owns the bookmark
    if (!bookmark )
      throw new ForbiddenException(
        'Access to resources denied',
      );

    await this.prisma.bookmark.delete({
      where: {
        id: bookmarkId,
      },
    });
  }
}
 