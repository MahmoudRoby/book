import 'package:bloc/bloc.dart';
import 'package:bookly/core/error/failure.dart';
import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:bookly/feature/home/data/repo/home_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'simillar_books_state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit(this.homeRepoImpl) : super(SimillarBooksInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSimillarBooks() async {
    emit(SimillarBooksLoading());
    var result = homeRepoImpl.fetchFeatureBooks();
    result.fold((failure) {
      emit(SimillarBooksFailure(errorMessage: failure.errMessage));
    }, (books) {
      emit(SimillarBooksSuccess(books: books));
    });
  }
}

extension on Future<Either<Failure, List<BookModel>>> {
  void fold(Null Function(dynamic failure) param0, Null Function(dynamic books) param1) {}
}
