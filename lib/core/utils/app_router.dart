import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kInitialRoute = '/';
  static const String kHomeRoute = '/home';
  static const String kBookDetailsRoute = '/book-details';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeRoute, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
