// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:toku_app/models/number_models.dart';

import 'package:audioplayers/audioplayers.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.item,
    required this.color,
    required this.itemTYpe,
  });
  final Item item;
  final Color color;
  final String itemTYpe;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffEf9235), child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(item.enName,
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {
                final player =
                    AudioPlayer(playerId: 'assets/sounds/$itemTYpe/');
                player.play(AssetSource(item.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    super.key,
    required this.item,
    required this.color,
    required this.ItemTYpe,
  });
  final Item item;
  final Color color;
  final String ItemTYpe;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(item.enName,
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {
                final player =
                    AudioPlayer(playerId: 'assets/sounds/$ItemTYpe/');
                player.play(AssetSource(item.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
