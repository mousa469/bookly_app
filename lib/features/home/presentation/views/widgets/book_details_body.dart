import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';

import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Column(
              children: [
               const BookDetailsCustomAppBar(),
                BooksDetailsSection(bookModel:bookModel ,),
               const Expanded(
                  child: SizedBox(
                    height: 35,
                  ),
                ),
               const  SimilarBooksSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
