import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kInitialRoute = '/';
  static const String kHomeRoute = '/home';
  static const String kBookDetailsRoute = '/book-details';
  static const String kSearchRoute = '/serachView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kSearchRoute,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(path: kHomeRoute, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsRoute,
        builder:
            (context, state) => BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child:  BookDetailsView(bookModel: state.extra as BookModel,),
            ),
      ),
    ],
  );
}
