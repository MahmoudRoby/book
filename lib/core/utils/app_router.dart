import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repo/home_repo_impl.dart';
import 'package:bookly/feature/home/presentation/manger/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/home_view.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail_body.dart';
import 'package:bookly/feature/search/presentation/views/search_view.dart';
import 'package:bookly/feature/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimillarBooksCubit(HomeRepoImpl(ApiService(Dio()))),
          child:  BookDetailBody(bookModel:state.extra as BookModel ,),
        ),
      )
    ],
  );
}
