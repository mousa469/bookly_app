import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .32,
            child: const FeaturedListViewItem(imgUrl: "https://th.bing.com/th/id/OIP.tv0wq0U2RfQGSg_r5YSzlgHaLu?rs=1&pid=ImgDetMain",)),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "the jungle book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 1,
        ),
        Opacity(
          opacity: .7,
          child: Text("Rudyard Kipling",
              style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          averageRating: 0,
          ratingCount: 0,
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
