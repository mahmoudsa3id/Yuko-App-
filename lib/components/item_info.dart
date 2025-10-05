import 'package:flutter/material.dart';
import 'package:yoku/models/item.dart';

class ItemsLists extends StatelessWidget {
  const ItemsLists({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,

      child: Container(
        child: Row(
          children: [
            // number.image == null ? const SizedBox():    لو عاوز تشغل الايتم دي في صفحه بدون صور
            Container(
              color: Color(0xffFFF6DC),
              child: Image.asset(item.image!),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.JpName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'DenkOne',
                    ),
                  ),
                  Text(
                    item.EnName,

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'DenkOne',
                    ),
                  ),
                ],
              ),
            ),

            Spacer(flex: 1),
            IconButton(
              splashColor: Color.fromARGB(255, 21, 51, 182),
              onPressed: () {
                item.playSound();
              },
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
