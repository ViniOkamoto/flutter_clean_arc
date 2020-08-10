import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mealsapp/features/search/data/datasource/meal_datasource.dart';
import 'package:mealsapp/features/search/data/repositories/meal_repository.dart';
import 'package:mealsapp/features/search/domain/i_repositories/i_meal_repository.dart';
import 'package:mealsapp/features/search/domain/usecases/get_meal_recipe.dart';

final di = GetIt.instance;

Future<void> injectDependecies() async {
  //Datasources
  di.registerLazySingleton<IMealDatasource>(() => MealDatasource(di()));
  //Repositories
  di.registerLazySingleton<IMealRepository>(() => MealRepository(di()));
  //UseCases
  di.registerFactory<IGetMealRecipe>(() => GetMealRecipe(di()));
  //Client http
  di.registerSingleton(Dio());
}
