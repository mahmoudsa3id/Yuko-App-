import 'package:flutter/material.dart';
import 'package:yoku/components/item_info.dart';
import 'package:yoku/models/item.dart';

class Familymembers extends StatelessWidget {
  const Familymembers({super.key});
  final List<ItemModel> items = const [
    ItemModel(
      EnName: 'Father',
      JpName: 'Chichioya',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      EnName: 'daughter',
      JpName: 'Musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      EnName: 'Grand Father',
      JpName: 'Ojisan',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grandfather.wav',
    ),
    ItemModel(
      EnName: 'Mother',
      JpName: 'Hahaoya',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      EnName: 'Grand Mother',
      JpName: 'Sobo',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grandmother.wav',
    ),
    ItemModel(
      JpName: 'Nisan',
      EnName: 'Older Brother',

      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/olderbother.wav',
    ),
    ItemModel(
      EnName: 'Older Sister',
      JpName: 'Ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/oldersister.wav',
    ),
    ItemModel(
      EnName: 'Son',
      JpName: 'Musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      EnName: 'Younger Brother',
      JpName: 'outoto',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/youngerbrohter.wav',
    ),
    ItemModel(
      EnName: 'Younger Sister',
      JpName: 'imuto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/youngersister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          'FamilyMembers',
          style: TextStyle(color: Colors.white, fontFamily: 'Pacifico-Regular'),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemsLists(color: const Color(0xff385922), item: items[index]);
        },
      ),
    );
  }
}
