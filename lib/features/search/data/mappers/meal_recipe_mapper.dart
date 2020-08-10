import 'package:mealsapp/features/search/domain/entities/meal_recipe.dart';

class MealRecipeMapper {
  static MealRecipe fromJson(Map<String, dynamic> json) {
    return MealRecipe(
        idMeal: json['idMeal'],
        strMeal: json['strMeal'],
        strDrinkAlternate: json['strDrinkAlternate'],
        strCategory: json['strCategory'],
        strArea: json['strArea'],
        strInstructions: json['strInstructions'],
        strMealThumb: json['strMealThumb'],
        strTags: json['strTags'],
        strYoutube: json['strYoutube'],
        strIngredient1: json['strIngredient1'],
        strIngredient2: json['strIngredient2'],
        strIngredient3: json['strIngredient3'],
        strIngredient4: json['strIngredient4'],
        strIngredient5: json['strIngredient5'],
        strIngredient6: json['strIngredient6'],
        strIngredient7: json['strIngredient7'],
        strIngredient8: json['strIngredient8'],
        strIngredient9: json['strIngredient9'],
        strIngredient10: json['strIngredient10'],
        strIngredient11: json['strIngredient11'],
        strIngredient12: json['strIngredient12'],
        strIngredient13: json['strIngredient13'],
        strIngredient14: json['strIngredient14'],
        strIngredient15: json['strIngredient15'],
        strIngredient16: json['strIngredient16'],
        strIngredient17: json['strIngredient17'],
        strIngredient18: json['strIngredient18'],
        strIngredient19: json['strIngredient19'],
        strIngredient20: json['strIngredient20'],
        strMeasure1: json['strMeasure1'],
        strMeasure2: json['strMeasure2'],
        strMeasure3: json['strMeasure3'],
        strMeasure4: json['strMeasure4'],
        strMeasure5: json['strMeasure5'],
        strMeasure6: json['strMeasure6'],
        strMeasure7: json['strMeasure7'],
        strMeasure8: json['strMeasure8'],
        strMeasure9: json['strMeasure9'],
        strMeasure10: json['strMeasure10'],
        strMeasure11: json['strMeasure11'],
        strMeasure12: json['strMeasure12'],
        strMeasure13: json['strMeasure13'],
        strMeasure14: json['strMeasure14'],
        strMeasure15: json['strMeasure15'],
        strMeasure16: json['strMeasure16'],
        strMeasure17: json['strMeasure17'],
        strMeasure18: json['strMeasure18'],
        strMeasure19: json['strMeasure19'],
        strMeasure20: json['strMeasure20'],
        strSource: json['strSource'],
        dateModified: json['dateModified']);
  }

  Map<String, dynamic> toJson(MealRecipe mealRecipe) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idMeal'] = mealRecipe.idMeal;
    data['strMeal'] = mealRecipe.strMeal;
    data['strDrinkAlternate'] = mealRecipe.strDrinkAlternate;
    data['strCategory'] = mealRecipe.strCategory;
    data['strArea'] = mealRecipe.strArea;
    data['strInstructions'] = mealRecipe.strInstructions;
    data['strMealThumb'] = mealRecipe.strMealThumb;
    data['strTags'] = mealRecipe.strTags;
    data['strYoutube'] = mealRecipe.strYoutube;
    data['strIngredient1'] = mealRecipe.strIngredient1;
    data['strIngredient2'] = mealRecipe.strIngredient2;
    data['strIngredient3'] = mealRecipe.strIngredient3;
    data['strIngredient4'] = mealRecipe.strIngredient4;
    data['strIngredient5'] = mealRecipe.strIngredient5;
    data['strIngredient6'] = mealRecipe.strIngredient6;
    data['strIngredient7'] = mealRecipe.strIngredient7;
    data['strIngredient8'] = mealRecipe.strIngredient8;
    data['strIngredient9'] = mealRecipe.strIngredient9;
    data['strIngredient10'] = mealRecipe.strIngredient10;
    data['strIngredient11'] = mealRecipe.strIngredient11;
    data['strIngredient12'] = mealRecipe.strIngredient12;
    data['strIngredient13'] = mealRecipe.strIngredient13;
    data['strIngredient14'] = mealRecipe.strIngredient14;
    data['strIngredient15'] = mealRecipe.strIngredient15;
    data['strIngredient16'] = mealRecipe.strIngredient16;
    data['strIngredient17'] = mealRecipe.strIngredient17;
    data['strIngredient18'] = mealRecipe.strIngredient18;
    data['strIngredient19'] = mealRecipe.strIngredient19;
    data['strIngredient20'] = mealRecipe.strIngredient20;
    data['strMeasure1'] = mealRecipe.strMeasure1;
    data['strMeasure2'] = mealRecipe.strMeasure2;
    data['strMeasure3'] = mealRecipe.strMeasure3;
    data['strMeasure4'] = mealRecipe.strMeasure4;
    data['strMeasure5'] = mealRecipe.strMeasure5;
    data['strMeasure6'] = mealRecipe.strMeasure6;
    data['strMeasure7'] = mealRecipe.strMeasure7;
    data['strMeasure8'] = mealRecipe.strMeasure8;
    data['strMeasure9'] = mealRecipe.strMeasure9;
    data['strMeasure10'] = mealRecipe.strMeasure10;
    data['strMeasure11'] = mealRecipe.strMeasure11;
    data['strMeasure12'] = mealRecipe.strMeasure12;
    data['strMeasure13'] = mealRecipe.strMeasure13;
    data['strMeasure14'] = mealRecipe.strMeasure14;
    data['strMeasure15'] = mealRecipe.strMeasure15;
    data['strMeasure16'] = mealRecipe.strMeasure16;
    data['strMeasure17'] = mealRecipe.strMeasure17;
    data['strMeasure18'] = mealRecipe.strMeasure18;
    data['strMeasure19'] = mealRecipe.strMeasure19;
    data['strMeasure20'] = mealRecipe.strMeasure20;
    data['strSource'] = mealRecipe.strSource;
    data['dateModified'] = mealRecipe.dateModified;
    return data;
  }
}
