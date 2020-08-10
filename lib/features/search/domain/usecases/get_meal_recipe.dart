import 'package:dartz/dartz.dart';
import 'package:mealsapp/features/search/domain/entities/meal_recipe.dart';
import 'package:mealsapp/features/search/domain/errors/search_errors.dart';
import 'package:mealsapp/features/search/domain/i_repositories/i_meal_repository.dart';

abstract class IGetMealRecipe {
  Future<Either<Failure, MealRecipe>> getMealRecipe(String id);
}

class GetMealRecipe implements IGetMealRecipe {
  final IMealRepository repository;
  GetMealRecipe(this.repository);
  @override
  Future<Either<Failure, MealRecipe>> getMealRecipe(String id) async {
    try {
      if (id == null) throw InvalidText();
      var result = await repository.getMealRecipe(id);
      if (result == null) throw NotFound();
      return Right(result);
    } on DatasourceError catch (e) {
      return left(e);
    } on Failure catch (e) {
      return left(e);
    }
  }
}
