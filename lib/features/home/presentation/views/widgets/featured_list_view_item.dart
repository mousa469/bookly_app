import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 1.4 / 2,
        child: CachedNetworkImage(
          errorWidget: (context, url, error) => const Icon(Icons.error),
          imageUrl: imgUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
