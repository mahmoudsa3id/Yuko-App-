import 'package:flutter/material.dart';
import 'package:yoku/components/item_info.dart';
import 'package:yoku/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> items = const [
    ItemModel(
      EnName: 'Black',
      JpName: 'kuro',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      EnName: 'Brown',
      JpName: 'chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      EnName: 'Yellow',
      JpName: 'kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
    ItemModel(
      EnName: 'Green',
      JpName: 'midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      EnName: 'Red',
      JpName: 'aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      EnName: 'white',
      JpName: 'shiro',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      EnName: 'Dusty yellow',
      JpName: 'kusunda kiiro',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      EnName: 'Gray',
      JpName: 'haiiro',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontFamily: 'Pacifico-Regular'),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemsLists(color: const Color(0xff7D40A2), item: items[index]);
        },
      ),
    );
  }
}
