part of 'best_seller_cubit.dart';

sealed class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

final class BestSellerInitial extends BestSellerState {}

final class BestSellerLoadingState extends BestSellerState {}

final class BestSellerSucessState extends BestSellerState {
  final List<BookModel> books;

 const   BestSellerSucessState({required this.books});
}

final class BestSellerFailureState extends BestSellerState {
  final String errMessage;

  const BestSellerFailureState({required this.errMessage});
}
