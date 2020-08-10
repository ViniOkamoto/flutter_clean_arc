import 'package:dio/dio.dart';
import 'package:mealsapp/features/search/domain/entities/meal_recipe.dart';
import 'package:mealsapp/features/search/domain/errors/search_errors.dart';

abstract class IMealDatasource {
  Future<MealRecipe> getMealRecipe(String id);
}

class MealDatasource implements IMealDatasource {
//  final Dio client = di<Dio>();
  final Dio client;
  MealDatasource(this.client);
  @override
  Future<MealRecipe> getMealRecipe(String id) async {
    try {
      final response = await client
          .get("https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id");
      if (response.statusCode == 200) {
        return response.data['meals'] != null
            ? MealRecipe.fromJson(response.data['meals'][0])
            : null;
      }
    } on DioError catch (e) {
      switch (e.response.statusCode) {
        case 400:
          throw BadRequest400(message: "status ${e.response.statusCode}");
        case 404:
          throw NotFound404(message: "status ${e.response.statusCode}");
        default:
          throw DatasourceError(message: "status ${e.response.statusCode}");
      }
    }
  }
}
