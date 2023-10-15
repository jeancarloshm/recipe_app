import 'ingredient.dart';

class Recipe {
  String label;
  String imageURL;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageURL, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      "assets/2126711929_ef763de2b3_w.jpg",
      4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', "Frozen Meatballs"),
        Ingredient(0.5, 'jar', 'Sauce'),
      ],
    ),
    Recipe(
      'Tomato Soup',
      "assets/3187380632_5056654a19_b.jpg",
      2,
      [
        Ingredient(1, 'can', 'Tomato Soap'),
      ],
    ),
  ];
}
