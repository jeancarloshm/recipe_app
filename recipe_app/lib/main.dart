import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(Recipe());
String titulo = 'Recipe App';

class Recipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.grey,
        secondary: Colors.white,
      )),
      title: titulo,
      home: Home(titulo),
    );
  }
}
