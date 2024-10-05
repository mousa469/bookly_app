import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates {
  const FeaturedBooksStates();
}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModel> booksList;

 const  FeaturedBooksSuccessState({required this.booksList});
}

class FeaturedBooksFailureState extends FeaturedBooksStates {
  final String errMessage;

  const FeaturedBooksFailureState({required this.errMessage});
}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}
