
import 'package:equatable/equatable.dart';

import '../../../domains/entities/book/book.dart';

abstract class ListBookState extends Equatable{

  @override
  List<Object?> get props => [];

}

class ListBookStateInit extends ListBookState{}
class ListBookStateLoading extends ListBookState{}
class ListBookStateSuccess extends ListBookState{
  final List<Book> listBook;

  ListBookStateSuccess(this.listBook);

  @override
  List<Object?> get props => [listBook];
}

class ListBookStateError extends ListBookState{
  final Object err;

  ListBookStateError({required this.err});

  @override
  List<Object?> get props => [];
}