import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepoImplementation) : super(BestSellerInitial());

  final HomeRepoImplementation homeRepoImplementation;

  fetchBestSellerBooks() async {
    emit(BestSellerLoadingState());
    var result = await homeRepoImplementation.fetchBestSellerBooks();
    result.fold((failure) {
      emit(BestSellerFailureState(errMessage: failure.errMessage));
    }, (books) {
      emit(BestSellerSucessState(books: books));
    });
  }
}
