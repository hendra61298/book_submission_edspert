
import 'package:book_submission_edspert/src/domains/entities/book/book.dart';
import 'package:book_submission_edspert/src/domains/entities/book/detail_book.dart';
import 'package:equatable/equatable.dart';

abstract class DetailBookState extends Equatable{
  @override
  List<Object?> get props => [];
}
class DetailBookStateInit extends DetailBookState{}
class DetailBookStateLoading extends DetailBookState{}

class DetailBookStateSuccess extends DetailBookState{
  final DetailBook book;
  final List<Book> listBook;

  DetailBookStateSuccess(this.book,this.listBook);

  @override
  List<Object?> get props => [book,listBook];
}

class DetailBookStateError extends DetailBookState{
  final Object err;

  DetailBookStateError({required this.err});

  @override
  List<Object?> get props => [];
}