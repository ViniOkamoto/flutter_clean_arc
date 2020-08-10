import 'package:mealsapp/core/di/dependecy_injection.dart';
import 'package:mealsapp/features/search/domain/entities/meal_recipe.dart';
import 'package:mealsapp/features/search/domain/usecases/get_meal_recipe.dart';
import 'package:mealsapp/features/search/presenter/stores/states/get_state.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final GetMealRecipe _getMealRecipe = di<IGetMealRecipe>();

  @observable
  MealRecipe mealRecipe;

  @observable
  SearchState state;
  @action
  setState(value) => state = value;

  @action
  fetch() async {
    print("bateu");
    var result = await _getMealRecipe.getMealRecipe("52772");
    print(result);
    setState(
      result.fold(
        (l) => ErrorState(l),
        (r) {
          mealRecipe = r;
          return SuccessState(r);
        },
      ),
    );
  }
}
