

import 'package:book_submission_edspert/src/domains/entities/book/book.dart';
import 'package:book_submission_edspert/src/domains/entities/book/detail_book.dart';

import '../../data/result.dart';

abstract class BookRepository{

  /// Get All Book List
  Future<Result<List<Book>>> getAllBook();

  /// Get All Search Book
  Future<Result<List<Book>>> getBookWithSearch(String name);

  /// Get All Search Book
  Future<Result<DetailBook>> getDetailBook(String isbn13);
}