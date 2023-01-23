

import 'package:equatable/equatable.dart';

abstract class DetailBookEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class DetailBookEventGetDetail extends DetailBookEvent{
  final String isbn13;

  DetailBookEventGetDetail(this.isbn13);
}
