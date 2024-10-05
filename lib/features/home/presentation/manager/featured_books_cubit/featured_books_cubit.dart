import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit() : super(FeaturedBooksInitialState());

  fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    try {
     List<BookModel> books =  await HomeRepoImplementation().fetchFeaturedBooks();
      emit(FeaturedBooksSuccessState(booksList: ));
    } catch (e) {}
  }
}
