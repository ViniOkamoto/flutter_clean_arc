import 'package:mealsapp/features/search/domain/entities/meal_recipe.dart';

abstract class IMealRepository {
  Future<MealRecipe> getMealRecipe(String id);
}
