
import 'dart:convert';

import 'package:book_submission_edspert/src/constant/api_url_const.dart';
import 'package:book_submission_edspert/src/data/result.dart';
import 'package:book_submission_edspert/src/domains/entities/book/book.dart';
import 'package:book_submission_edspert/src/domains/repository/BookRepository.dart';
import 'package:dio/dio.dart';

class BookDataSource implements BookRepository{
  final dio = Dio();

  @override
  Future<Result<List<Book>>> getAllBook() async{
    var response = await dio.get(ApiUrlConst.getAllBookUrl);

    Iterable dataParse = response.data['books'];
    List<Book> listBook = List<Book>.from(dataParse.map((e) => Book.fromJson(e)));

    return Result(
        error: response.data['error'],
        total: int.parse(response.data['total']),
        data: listBook);
  }

  @override
  Future<Result<List<Book>>> getBookWithSearch(String name) {
    // TODO: implement getBookWithSearch
    throw UnimplementedError();
  }

  @override
  Future<Result<Book>> getDetailBook(String isbn13) {
    // TODO: implement getDetailBook
    throw UnimplementedError();
  }

}