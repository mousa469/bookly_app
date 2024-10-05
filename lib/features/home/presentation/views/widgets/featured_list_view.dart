import 'package:bookly/core/widgets/custom_circular_loading.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .27,
            child: ListView.builder(
              itemCount: state.booksList.length,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: FeaturedListViewItem(imgUrl: state.booksList[index].volumeInfo.imageLinks.thumbnail,),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomCircularLoading();
        }
      },
    );
  }
}
