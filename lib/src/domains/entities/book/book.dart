

import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book{
  factory Book({
    required String title,
    required String subtitle,
    required String isbn13,
    required String price,
    required String image,
    required Uri url,
  })= _Book;

   factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

}