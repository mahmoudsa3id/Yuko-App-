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
      appBar: AppBar(
        title: Text(
          'Japanese',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'DenkOne',
          ),
        ),
        backgroundColor: Color(0xff49332A),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Numbers();
                  },
                ),
              );
            },

            color: Color(0xffAC6722),
            text: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Familymembers();
                  },
                ),
              );
            },
            color: Color(0xff294019),
            text: 'Family Members',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorsPage();
                  },
                ),
              );
            },
            color: Color(0xff7D40A2),
            text: 'Color',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Phrasess();
                  },
                ),
              );
            },
            color: Color(0xff47A5CB),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
