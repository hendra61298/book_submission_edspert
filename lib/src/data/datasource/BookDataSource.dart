
import 'package:book_submission_edspert/src/data/result.dart';
import 'package:book_submission_edspert/src/domains/entities/book/book.dart';
import 'package:book_submission_edspert/src/domains/repository/BookRepository.dart';

class BookDataSource implements BookRepository{

  @override
  Future<Result<List<Book>>> getAllBook() {
    // TODO: implement getAllBook
    throw UnimplementedError();
  }

}