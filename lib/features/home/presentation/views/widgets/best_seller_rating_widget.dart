import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
class BestSellerRatingWidget extends StatelessWidget {
  const BestSellerRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
         const  Icon(
            Icons.star,
            size: 18,
            color: Colors.amber,
          ),
          const  SizedBox(
            width: 6.3,
          ),
          const  Text(
            "4.5",
            style: Styles.textStyle16,
          ),
          const  SizedBox(
            width: 5,
          ),
          Text(
      
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            "(3320)",
            style: Styles.textStyle14.copyWith(color: Colors.grey),
          ),
        ],
      );
    
  }
}