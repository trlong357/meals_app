import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen(
    this.categoryId,
    this.categoryTitle, {
    Key? key,
  }) : super(key: key);

  final String categoryId;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: const Center(
        child: Text("The recipes for the category"),
      ),
    );
  }
}
