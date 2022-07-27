import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = "/category-meals";
  const CategoryMealsScreen(
      // this.categoryId,
      // this.categoryTitle,
      {
    Key? key,
  }) : super(key: key);

  // final String categoryId;
  // final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArguments['title'];
    final categoryID = routeArguments['id'];
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return MealItem(
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
            );
          }),
          itemCount: categoryMeals.length,
        ));
  }
}
