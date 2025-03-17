import 'package:flutter/material.dart';
import 'package:furniture_app/home.dart';
import 'package:furniture_app/product_details.dart';
import 'package:furniture_app/screens/detailed_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}
