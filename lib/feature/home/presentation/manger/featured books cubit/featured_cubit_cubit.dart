import 'package:bloc/bloc.dart';
import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_cubit_state.dart';

class FeaturedCubitCubit extends Cubit<FeaturedCubitState> {
  FeaturedCubitCubit(this.homeRepo) : super(FeaturedCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedCubitLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((fauiler) {
      emit(FeaturedCubitFailure(errorMessage: fauiler.errMessage));
    }, (books) {
      emit(FeaturedCubitSuccess(books: books));
    });
  }
}
