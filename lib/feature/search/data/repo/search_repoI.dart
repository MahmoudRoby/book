import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly/feature/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failure.dart';

class SearchRepoi extends SearchRepo {
  final ApiService apiService;

  SearchRepoi(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchRevelancBook(
      String searchedBook) async {
    if (searchedBook.isEmpty) {
      return left(ServerFailure('No result founded'));
    }
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks &Sorting=relevance &q=subject:$searchedBook');
      if (data['items'] == null || data['items'].isEmpty) {
        return left(ServerFailure('No data found'));
      }
      List<BookModel> revelanceBooks = [];
      for (var item in data['items']) {
        revelanceBooks.add(BookModel.fromJson(item));
      }
      return right(revelanceBooks);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else
        return left(ServerFailure(e.toString()));
    }
  }
}
