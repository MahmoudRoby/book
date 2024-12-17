import 'package:bookly/constants.dart';
import 'package:bookly/feature/home/presentation/views/home_view.dart';
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
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
