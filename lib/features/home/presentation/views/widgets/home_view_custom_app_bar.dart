import 'package:bookly/features/home/presentation/views/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class HomeViewCustomAppBar extends StatelessWidget {
  const HomeViewCustomAppBar(
      {super.key,
      required this.logo,
      required this.icon,
      required this.onPressed});
  final String logo;
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset(
            logo,
            width: 80,
            height: 80,
          ),
          const Spacer(),
          CustomSearchIcon(
            onPressed: onPressed,
            customAppBarIcon: icon,
          )
        ],
      ),
    );
  }
}
