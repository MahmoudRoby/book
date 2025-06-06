import 'package:bookly/core/error/failure.dart';

import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchRevelancBook(String searchedBook);
}
