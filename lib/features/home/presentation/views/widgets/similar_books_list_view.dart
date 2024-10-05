import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            child: FeaturedListViewItem(imgUrl: "https://th.bing.com/th/id/OIP.tv0wq0U2RfQGSg_r5YSzlgHaLu?rs=1&pid=ImgDetMain",),
          );
        },
      ),
    );
  }
}
