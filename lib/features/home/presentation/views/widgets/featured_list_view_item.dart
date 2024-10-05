import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key, required this.imgUrl});

  final  String imgUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4 / 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imgUrl),
          ),
        ),
      ),
    );
  }
}
