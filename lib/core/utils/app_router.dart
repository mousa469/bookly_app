import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static var router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const  SplashView() ,
        ),

 GoRoute(
        path: kHomeView,
        builder: (context, state) => const  HomeView() ,
        ),

      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()), 
          child:  BookDetailsView(
            bookModel: state.extra as BookModel ,

          )) ,
        ),


      GoRoute(
        path: kSearchView,
        builder: (context, state) => const  SearchView() ,
        ),


    ],
  );
}
