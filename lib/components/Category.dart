import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.color, this.text, this.onTap});
  final String? text;
  final Color? color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 185,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'DenkOne',
          ),
        ),
      ),
    );
  }
}
