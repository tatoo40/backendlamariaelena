import {
  Body,
  Controller,
  Delete,
  Get,
  HttpCode,
  HttpStatus,
  Param,
  ParseIntPipe,
  Patch,
  Post,
  UseGuards,
} from '@nestjs/common';
import { GetUser } from '../auth/decorator';
import { JwtGuard } from '../auth/guard';
import { BookmarkService } from './bookmark.service';
import {
  CreateBookmarkDto,
  EditBookmarkDto,
} from './dto';

@UseGuards(JwtGuard)

@Controller('bookmarks')
export class BookmarkController {
  constructor(
    private bookmarkService: BookmarkService,
  ) {}

  @Get()
  getBookmarks() {
    return this.bookmarkService.getBookmarks(

    );
  }

  @Get(':id')
  getBookmarkById(

    @Param('id', ParseIntPipe) bookmarkId: number,
  ) {
    return this.bookmarkService.getBookmarkById(
   
      bookmarkId,
    );
  }

  @Post()
  createBookmark(
   
    @Body() dto: CreateBookmarkDto,
  ) {
    return this.bookmarkService.createBookmark(
   
      dto,
    );
  }

  @Patch(':id')
  editBookmarkById(
  
    @Param('id', ParseIntPipe) bookmarkId: number,
    @Body() dto: EditBookmarkDto,
  ) {
    return this.bookmarkService.editBookmarkById(

      bookmarkId,
      dto,
    );
  }

  @HttpCode(HttpStatus.NO_CONTENT)
  @Delete(':id')
  deleteBookmarkById(
    
    @Param('id', ParseIntPipe) bookmarkId: number,
  ) {
    return this.bookmarkService.deleteBookmarkById(
     
      bookmarkId,
    );
  }
}
