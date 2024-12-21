import 'package:bloc/bloc.dart';
import 'package:bookly/feature/home/data/model/book_model/book_model.dart';


import 'package:bookly/feature/home/data/repo/home_repo_impl.dart';
import 'package:equatable/equatable.dart';


part 'simillar_books_state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit(this.homeRepoImpl) : super(SimillarBooksInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSimillarBooks({required String category}) async {
    emit(SimillarBooksLoading());
    var result = await homeRepoImpl.fetchSimllarBooks(category: category);
    result.fold((failure) {
      emit(SimillarBooksFailure(errorMessage: failure.errMessage));
    }, (books) {
      emit(SimillarBooksSuccess(books: books));
    });
  }
}
