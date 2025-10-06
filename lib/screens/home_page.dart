import 'package:flutter/material.dart';
import 'package:yoku/components/Category.dart';
import 'package:yoku/screens/color.dart';
import 'package:yoku/screens/numbers.dart';
import 'package:yoku/screens/familymembers.dart';
import 'package:yoku/screens/phrasess.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Japanese Learn',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontFamily: 'DenkOne',
          ),
        ),
        backgroundColor: Color(0xff49332A),
      ),
      body: Column(
        children: [
          // اللوجو فوق الكونتينرز
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
              // إضافة ظل خفيف
              foregroundColor: Colors.transparent,
            ),
          ),
          Expanded(
            child: Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Numbers()),
                );
              },
              color: Color(0xffAC6722),
              text: 'Numbers',
            ),
          ),
          Expanded(
            child: Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Familymembers()),
                );
              },
              color: Color(0xff294019),
              text: 'Family Members',
            ),
          ),
          Expanded(
            child: Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ColorsPage()),
                );
              },
              color: Color(0xff7D40A2),
              text: 'Color',
            ),
          ),
          Expanded(
            child: Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Phrasess()),
                );
              },
              color: Color(0xff47A5CB),
              text: 'Phrases',
            ),
          ),
        ],
      ),
    );
  }
}
