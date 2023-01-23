

import 'package:book_submission_edspert/src/data/result.dart';
import 'package:book_submission_edspert/src/domains/entities/book/book.dart';
import 'package:book_submission_edspert/src/features/list_book/bloc/list_book_event.dart';
import 'package:book_submission_edspert/src/features/list_book/bloc/list_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/datasource/BookDataSource.dart';

class ListBookBloc extends Bloc<ListBookEvent, ListBookState>{
  final BookDataSource _bookDataSource;

  ListBookBloc(this._bookDataSource) : super(ListBookStateInit()){
      on<ListBookEventgGetBooks>(_getAllBooks);
  }
  _getAllBooks(
      ListBookEventgGetBooks event,
      Emitter<ListBookState> emit
      )async {
    emit(ListBookStateLoading());
    try{
      Result<List<Book>> listBook= await _bookDataSource.getAllBook();
      emit(ListBookStateSuccess(listBook.data!));
    }catch (e){
      emit(ListBookStateError(err: e));
    }

  }

}