import 'package:bookly/features/home/presentation/views/widgets/custom_image.dart';

import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return CustomImage(imgUrl: imgUrl);
  }
}
