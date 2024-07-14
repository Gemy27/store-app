import 'package:flutter/material.dart';
import 'package:storeapp/%D9%8DScreens/HomePage.dart';
import 'package:storeapp/%D9%8DScreens/UpdatePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id : (context) => HomePage(),
        UpdatePage.id:(context) => UpdatePage(), 
      },
      initialRoute: HomePage.id,
    );
  }
}
