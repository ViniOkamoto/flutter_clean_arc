import 'package:mealsapp/features/search/data/datasource/meal_datasource.dart';
import 'package:mealsapp/features/search/domain/entities/meal_recipe.dart';
import 'package:mealsapp/features/search/domain/i_repositories/i_meal_repository.dart';

class MealRepository implements IMealRepository {
  final IMealDatasource _iMealDatasource;
  MealRepository(this._iMealDatasource);

  @override
  Future<MealRecipe> getMealRecipe(String id) async {
    return await _iMealDatasource.getMealRecipe(id);
  }
}
