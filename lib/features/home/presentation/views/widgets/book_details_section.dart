import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .32,
            child:  FeaturedListViewItem(
              imgUrl:
                  bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
            )),
        const SizedBox(
          height: 30,
        ),
         Text(
          textAlign: TextAlign.center ,
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 1,
        ),
        Opacity(
          opacity: .7,
          child: Text(bookModel.volumeInfo.authors?[0] ?? "Un known" ,
              style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)),
        ),
        const SizedBox(
          height: 16,
        ),
         BookRating(
          averageRating: bookModel.volumeInfo?.averageRating ?? 0 ,
          ratingCount: bookModel.volumeInfo?.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
