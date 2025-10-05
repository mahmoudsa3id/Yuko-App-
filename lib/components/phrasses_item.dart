import 'package:flutter/material.dart';
import 'package:yoku/models/item.dart';

class PhrassesItem extends StatelessWidget {
  const PhrassesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.JpName,
                  style: TextStyle(
                    color: const Color.fromARGB(248, 134, 6, 151),
                    fontSize: 15,
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
    );
  }
}
