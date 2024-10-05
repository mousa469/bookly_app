import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCircularLoading extends StatelessWidget {
  const CustomCircularLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(),);
  }
}