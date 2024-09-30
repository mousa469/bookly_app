import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_builder.dart';

import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(
                  icon: const Icon(Icons.search),
                  logo: AssetsData.logo,
                  onPressed: () {},
                ),
              ),
              const FeaturedBooksListView(),
              const SizedBox(
                height: 50,
              ),
             const  Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      

        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          sliver: BestSellerSliverListBuilder(),
        ),
      ],
    );

 
  }
}
