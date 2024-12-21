part of 'simillar_books_cubit.dart';

sealed class SimillarBooksState extends Equatable {
  const SimillarBooksState();

  @override
  List<Object> get props => [];
}

final class SimillarBooksInitial extends SimillarBooksState {}

final class SimillarBooksLoading extends SimillarBooksState {}

final class SimillarBooksFailure extends SimillarBooksState {
  final String errorMessage;

  const SimillarBooksFailure({required this.errorMessage});
}

final class SimillarBooksSuccess extends SimillarBooksState {
  final List<BookModel> books;

  const SimillarBooksSuccess({required this.books});
}
