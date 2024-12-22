import 'package:bloc/bloc.dart';


import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly/feature/search/data/repo/search_repoI.dart';
import 'package:equatable/equatable.dart';

part 'search_list_state.dart';

class SearchListCubit extends Cubit<SearchListState> {
  SearchListCubit(this.searchRepoi) : super(SearchListInitial());
  final SearchRepoi searchRepoi;

  Future<void> fetchRevelancBook(String searchedBook) async {
    emit(SearchListLoding());
    var result = await searchRepoi.fetchRevelancBook(searchedBook);
    result.fold((failure) {
      emit(SearchListFailer(errMessage: failure.errMessage));
    }, (searchedBoks) {
      emit(SearchListSuccess(searchedBook: searchedBoks));
    });
  }
}
