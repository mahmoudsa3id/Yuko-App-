import 'package:flutter/material.dart';
import 'package:yoku/screens/home_page.dart';

void main() {
  runApp(Toku());
}

class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
