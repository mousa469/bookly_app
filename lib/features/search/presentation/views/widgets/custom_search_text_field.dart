import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextField(
  decoration: InputDecoration(
    hintText: "Search",
    enabledBorder: buildSearchViewBorder(),
    focusedBorder:buildSearchViewBorder(),
    suffixIcon: const Icon(Icons.search)
  ),
);
  }

  OutlineInputBorder buildSearchViewBorder() {
    return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const  BorderSide(color: Colors.white)
  );
  }
}
