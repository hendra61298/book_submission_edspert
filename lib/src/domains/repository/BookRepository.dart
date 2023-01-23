

import 'package:book_submission_edspert/src/domains/entities/book/book.dart';

import '../../data/result.dart';

abstract class BookRepository{

  /// Get All Book List
  Future<Result<List<Book>>> getAllBook();

}