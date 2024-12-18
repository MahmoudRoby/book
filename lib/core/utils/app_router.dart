import 'package:bookly/constants.dart';
import 'package:bookly/feature/home/presentation/views/home_view.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail_body.dart';
import 'package:bookly/feature/search/presentation/views/search_view.dart';
import 'package:bookly/feature/splash/presentation/views/splash_view.dart';
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
        builder: (context, state) => const BookDetailBody(),
      )
    ],
  );
}
