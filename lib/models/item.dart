import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String sound;

  final String EnName;
  final String JpName;
  const ItemModel({
    required this.EnName,
    required this.JpName,
    this.image,
    required this.sound,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
