import 'package:flutter/material.dart';
import 'package:yoku/components/item_info.dart';
import 'package:yoku/models/item.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<ItemModel> items = const [
    ItemModel(
      EnName: 'one',
      JpName: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      EnName: 'Two',
      JpName: 'ni',
      image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      EnName: 'Three',
      JpName: 'san',
      image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      EnName: 'Four',
      JpName: 'yon',
      image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      EnName: 'Five',
      JpName: 'go',
      image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      EnName: 'Sex',
      JpName: 'roku',
      image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      EnName: 'Seven',
      JpName: 'shichi',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      EnName: 'eight',
      JpName: 'hachi',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      EnName: 'Nine',
      JpName: 'kyuu',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      EnName: 'Ten',
      JpName: 'juu',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          'numbers',
          style: TextStyle(color: Colors.white, fontFamily: 'DenkOne'),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemsLists(color: const Color(0xffEB8F35), item: items[index]);
        },
      ),
    );
  }
}
