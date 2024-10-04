import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  ApiServices apiServices;

  HomeRepoImplementation({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      List<BookModel> books = [];
      var data = await apiServices.get(
          endPoint:
              "volumes?q=subject:programming&Filtering=free-ebooks&sorting=newest");

      for (var book in data["items"]) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } on Exception catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
