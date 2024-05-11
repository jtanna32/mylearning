import 'package:flutter/material.dart';
import 'package:mylearning/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white, // Set primary color to white
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          color: Colors.transparent, // Set AppBar color to white
        ),
      ),
      home: const HomePage(),
    );
  }
}
