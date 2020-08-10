import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mealsapp/core/di/dependecy_injection.dart';
import 'package:mealsapp/features/search/domain/i_repositories/i_meal_repository.dart';
import 'package:mealsapp/features/search/domain/usecases/get_meal_recipe.dart';
import 'package:mockito/mockito.dart';

class repositoryMock extends Mock implements IMealRepository {}

main() {
  final repository = repositoryMock();
  injectDependecies();
  di.unregister<Dio>();

  ///These tests are DI integration
  test(
    'Must return usecase implementation',
    () async {
      final usecase = di<IGetMealRecipe>();
      expect(usecase, isA<GetMealRecipe>());
    },
  );

//  test(
//    'Must return meal recipe',
//    () async {
//      final usecase = di<IGetMealRecipe>();
//      when(dio.get(any)).thenAnswer((realInvocation) async =>
//          Response(data: jsonDecode(mealResponse), statusCode: 200));
//      final result = await usecase.getMealRecipe("123");
//      expect(result | null, isA<MealRecipe>());
//    },
//  );

//  test(
//    'Must return NotFound exception if it hasnt found recipe',
//    () async {
//      when(repository.getMealRecipe(any)).thenAnswer((_) async => null);
//      final usecase = di<IGetMealRecipe>();
//      final result = await usecase.getMealRecipe("234");
//      expect(result.fold(id, id), isA<NotFound>());
//    },
//  );
//
//  test(
//    'Must return InvalidText exception if not providing valid text',
//    () async {
//      when(repository.getMealRecipe(any)).thenAnswer((_) async => MealRecipe());
//      final usecase = di<IGetMealRecipe>();
//      final result = await usecase.getMealRecipe(null);
//      expect(result.isLeft(), true);
//      expect(result.fold(id, id), isA<InvalidText>());
//    },
//  );
}
