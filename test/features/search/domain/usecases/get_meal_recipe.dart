import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealsapp/features/search/domain/entities/meal_recipe.dart';
import 'package:mealsapp/features/search/domain/errors/search_errors.dart';
import 'package:mealsapp/features/search/domain/i_repositories/i_meal_repository.dart';
import 'package:mealsapp/features/search/domain/usecases/get_meal_recipe.dart';
import 'package:mockito/mockito.dart';

class repositoryMock extends Mock implements IMealRepository {}

main() {
  final repository = repositoryMock();
  final usecase = GetMealRecipe(repository);

  ///These tests are without di integration, it was built before any external validation.
  test(
    'Must return meal recipe',
    () async {
      when(repository.getMealRecipe(any)).thenAnswer((_) async => MealRecipe());
      final result = await usecase.getMealRecipe("123");
      expect(result | null, isA<MealRecipe>());
    },
  );

  test(
    'Must return NotFound exception if it hasnt found recipe',
    () async {
      when(repository.getMealRecipe(any)).thenAnswer((_) async => null);
      final result = await usecase.getMealRecipe("234");
      expect(result.fold(id, id), isA<NotFound>());
    },
  );

  test(
    'Must return InvalidText exception if not providing valid text',
    () async {
      when(repository.getMealRecipe(any)).thenAnswer((_) async => MealRecipe());
      final result = await usecase.getMealRecipe(null);
      expect(result.isLeft(), true);
      expect(result.fold(id, id), isA<InvalidText>());
    },
  );
}
