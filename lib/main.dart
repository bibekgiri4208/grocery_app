import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/dash_board_screen.dart';
import 'package:grocery_app/screens/home/fruit_details_screen.dart';
import 'package:grocery_app/screens/home/fruits_screen.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import 'package:grocery_app/screens/home/stack_screen.dart';
import 'package:grocery_app/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const FruitDetailsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
