import 'package:bookly/core/error/failure.dart';
import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  /*
  /تحديد ايه اللى انا عمله فى الشاشة بالظبط
  اللى يهمنى ان الدوال تتنفذ مش مهم ازاى
  انا هحدد الاسم و الداتا اللى داخلة و اللى راجعه
  */
  Future<Either<Failure,List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure,List<BookModel>>> fetchNewsetBooks();
}
// تحديد راجع الدوال اذا كان فاشل او ناجح(bookModel)