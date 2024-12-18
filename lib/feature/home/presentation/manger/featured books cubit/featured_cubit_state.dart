part of 'featured_cubit_cubit.dart';

sealed class FeaturedCubitState extends Equatable {
  const FeaturedCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedCubitInitial extends FeaturedCubitState {}

final class FeaturedCubitLoading extends FeaturedCubitState {}

final class FeaturedCubitFailure extends FeaturedCubitState {
  final String errorMessage;

  const FeaturedCubitFailure({required this.errorMessage});
}

final class FeaturedCubitSuccess extends FeaturedCubitState {
  final List<BookModel> books;
   const FeaturedCubitSuccess({required this.books});
}
