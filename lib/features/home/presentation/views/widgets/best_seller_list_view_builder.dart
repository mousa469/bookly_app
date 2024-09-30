import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

// class BestSellerListViewBuilder extends StatelessWidget {
//   const BestSellerListViewBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(  physics: const NeverScrollableScrollPhysics(),      itemCount: 20, padding: EdgeInsets.zero, itemBuilder: (context, index) {
//       return const BestSellerListViewItem();
//     });
//   }
// }

class BestSellerSliverListBuilder extends StatelessWidget {
  const BestSellerSliverListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => const BestSellerListViewItem(),
      ),
    );
  }
}
