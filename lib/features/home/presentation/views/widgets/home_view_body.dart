import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_builder.dart';

import 'package:bookly/features/home/presentation/views/widgets/home_view_custom_app_bar.dart';

import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                child: HomeViewCustomAppBar(
                  icon: const Icon(Icons.search),
                  logo: AssetsData.logo,
                  onPressed: () {
                    GoRouter.of(context).push(kSearchView);
                  },
                ),
              ),
              const FeaturedBooksListView(),
              const SizedBox(
                height: 50,
              ),
              const Padding(
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
