import 'package:flutter/material.dart';
import 'package:mealsapp/core/app.dart';
import 'package:mealsapp/core/di/dependecy_injection.dart';

void main() {
  injectDependecies();
  runApp(MealApp());
}
