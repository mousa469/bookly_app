import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
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
        builder: (context, state) => const  BookDetailsView() ,
        ),


    ],
  );
}
