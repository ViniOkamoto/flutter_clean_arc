import 'package:flutter/material.dart';
import 'package:mealsapp/features/search/presenter/pages/home_page.dart';

class MealApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MealApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}
