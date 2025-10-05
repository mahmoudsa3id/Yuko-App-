import 'package:flutter/material.dart';
import 'package:yoku/splash_screen.dart';

void main() {
  runApp(const yuko());
}

class yuko extends StatelessWidget {
  const yuko({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yoku App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}
