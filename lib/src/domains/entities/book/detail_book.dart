

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_book.freezed.dart';
part 'detail_book.g.dart';

@freezed
class DetailBook with _$DetailBook{
    factory DetailBook({
      required String title,
      required String subtitle,
      required String isbn13,
      required String price,
      required String image,
      required Uri url,
      required String desc,
      required String year,
      required String pages,
      required String publisher,
      required String authors,
      required String rating,
  })= _DetailBook;

  factory DetailBook.fromJson(Map<String, dynamic> json) => _$DetailBookFromJson(json);
}