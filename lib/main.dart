import 'package:flutter/material.dart';
import 'package:skill_harvest_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log in',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            primary: Colors.white,
            secondary: Colors.blue),
        useMaterial3: true,
      ),
      home: const SpalshScreen(),
    );
  }
}
