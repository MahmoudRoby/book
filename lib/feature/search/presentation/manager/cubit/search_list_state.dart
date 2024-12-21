part of 'search_list_cubit.dart';

sealed class SearchListState extends Equatable {
  const SearchListState();

  @override
  List<Object> get props => [];
}

final class SearchListInitial extends SearchListState {}

final class SearchListLoding extends SearchListState {}

final class SearchListFailer extends SearchListState {
  final String errMessage;

  const SearchListFailer({required this.errMessage});
}

final class SearchListSuccess extends SearchListState {
  final List<BookModel> searchedBook;

  const SearchListSuccess({required this.searchedBook});
}
