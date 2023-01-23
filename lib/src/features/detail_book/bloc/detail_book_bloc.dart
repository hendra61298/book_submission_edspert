

import 'package:book_submission_edspert/src/data/result.dart';
import 'package:book_submission_edspert/src/domains/entities/book/book.dart';
import 'package:book_submission_edspert/src/domains/entities/book/detail_book.dart';
import 'package:book_submission_edspert/src/features/detail_book/bloc/detail_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/datasource/BookDataSource.dart';
import 'detail_book_event.dart';

class DetailBookBloc extends Bloc<DetailBookEvent,DetailBookState>{
  final BookDataSource _bookDataSource;
  DetailBookBloc(this._bookDataSource): super(DetailBookStateInit()){
    on<DetailBookEventGetDetail>(_getDetailBook);
  }

  _getDetailBook(
      DetailBookEventGetDetail event,
      Emitter<DetailBookState> emit,
      )async{
    emit(DetailBookStateLoading());
    try{
      Result<DetailBook> result = await _bookDataSource.getDetailBook(event.isbn13);
      Result<List<Book>> resultListBook = await _bookDataSource.getAllBook();
      emit(DetailBookStateSuccess(result.data!,resultListBook.data!));
    }catch (e){
      emit(DetailBookStateError(err: e));
    }
  }

}