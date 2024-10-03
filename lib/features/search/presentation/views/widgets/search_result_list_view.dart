import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

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