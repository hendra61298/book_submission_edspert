// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailBook _$$_DetailBookFromJson(Map<String, dynamic> json) =>
    _$_DetailBook(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      isbn13: json['isbn13'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      url: Uri.parse(json['url'] as String),
      desc: json['desc'] as String,
      year: json['year'] as String,
      pages: json['pages'] as String,
      publisher: json['publisher'] as String,
      authors: json['authors'] as String,
      rating: json['rating'] as String,
    );

Map<String, dynamic> _$$_DetailBookToJson(_$_DetailBook instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'isbn13': instance.isbn13,
      'price': instance.price,
      'image': instance.image,
      'url': instance.url.toString(),
      'desc': instance.desc,
      'year': instance.year,
      'pages': instance.pages,
      'publisher': instance.publisher,
      'authors': instance.authors,
      'rating': instance.rating,
    };
