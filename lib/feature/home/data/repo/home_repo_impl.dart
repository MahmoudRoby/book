import 'dart:math';

import 'package:bookly/core/error/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
    }
    return left(ServerFailure(e.toString()));
  }

/*
انا بعمل اوبجيكت من apiService وطبعا لازم اضيفه فى الكونستركتور
استقبله فى متغير اسمه data كل ده عشان استدعى دالة get من api class
هيطلب منى الاند بوينت هديهاله وده هيرجعلى ماب هعمل عليها فور لوب 
الراجع بتاعها هستقبله فى ليست عن طريق .add
هعمل تراى و كاتش على المتغير كله
لو كان الدنيا تمام هرجع الناحية اليمين من Either
لو عمل كاتش يبقى اسأله انت جاى من dioExption ولا لأ
*/
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks &q=subject:computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
    }
    return left(ServerFailure(e.toString()));
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimllarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks &Sorting=relevance &q=subject:programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
    }
    return left(ServerFailure(e.toString()));
  }
}
