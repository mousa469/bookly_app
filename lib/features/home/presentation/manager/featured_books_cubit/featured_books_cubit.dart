import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepoImplementation)
      : super(FeaturedBooksInitialState());

  final HomeRepoImplementation homeRepoImplementation;

  fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepoImplementation.fetchBestSellerBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailureState(errMessage: failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(booksList: books));
    });
  }
}
