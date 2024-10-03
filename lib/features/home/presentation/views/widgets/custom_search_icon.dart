import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon(
      {super.key, required this.customAppBarIcon, required this.onPressed});

  final Icon customAppBarIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.1)),
      width: 32,
      height: 32,
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: customAppBarIcon,
          color: Colors.white,
          iconSize: 18,
        ),
      ),
    );
  }
}
