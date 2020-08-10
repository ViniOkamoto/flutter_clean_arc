import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealsapp/features/search/data/datasource/meal_datasource.dart';
import 'package:mealsapp/features/search/domain/errors/search_errors.dart';
import 'package:mockito/mockito.dart';

import '../../utils/meal_response.dart';

class DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();

  /// For this to work we need to instantiate Dio inside the constructor of datasource.
  /// By the way, if you don't instantiate the test it won't work
  final datasource = MealDatasource(dio);
//  final datasource = MealDatasource();
  test("Must return a MealRecipeModel", () async {
    when(dio.get(any)).thenAnswer((realInvocation) async =>
        Response(data: jsonDecode(mealResponse), statusCode: 200));
    final future = datasource.getMealRecipe("teste");
    expect(future, completes);
  });

  test("Must return a BadRequest exception", () async {
    when(dio.get(any)).thenAnswer(
        (realInvocation) async => Response(data: null, statusCode: 400));
    final future = datasource.getMealRecipe("teste");
    expect(future, throwsA(isA<BadRequest400>()));
  });

  test("Must return a NotFound exception", () async {
    when(dio.get(any)).thenAnswer(
        (realInvocation) async => Response(data: null, statusCode: 404));
    final future = datasource.getMealRecipe("teste");
    expect(future, throwsA(isA<NotFound404>()));
  });
}
