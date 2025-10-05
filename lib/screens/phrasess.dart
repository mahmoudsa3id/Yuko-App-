import 'package:flutter/material.dart';
import 'package:yoku/components/phrasses_item.dart';
import 'package:yoku/models/item.dart';

class Phrasess extends StatelessWidget {
  const Phrasess({super.key});
  final List<ItemModel> items = const [
    ItemModel(
      EnName: 'Are You Coming',
      JpName: 'Kimasu ka',

      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      EnName: 'Dont Forget To Subscribe',
      JpName: 'Kodoku suru koto o wasurenaide kudasai',

      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      EnName: 'How Are You Feeling',
      JpName: 'Go kibun wa ikagadesu',

      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      EnName: 'I Love Anime',
      JpName: 'Watashi wa anime  ga daisukidesu',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      EnName: 'I Love Programming',
      JpName: 'watashi wa puroguramingu gadaisukidesu',

      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      EnName: 'Programming Is Easy',
      JpName: 'Puroguramingu wa kantandesu',

      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      EnName: 'What Your Name',
      JpName: 'Namae wa nadesu ka',

      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      EnName: 'Whare Are You Going',
      JpName: 'doko ni iku no',

      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      EnName: 'Yes Im Coming',
      JpName: 'hai 、 ikiba masu',

      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),

        title: Text(
          'Phrasses',
          style: TextStyle(color: Colors.white, fontFamily: 'DenkOne'),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return PhrassesItem(
            color: const Color(0xff47A5CB),
            item: items[index],
          );
        },
      ),
    );
  }
}
