import 'package:flutter/material.dart';
import 'package:toku_app/component/item.dart';

import '../models/number_models.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<Item> number = const [
    Item(
        sound: "sounds/numbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        jpName: "ichi",
        enName: "one"),
    Item(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        jpName: "ni",
        enName: "two"),
    Item(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        jpName: "san",
        enName: "three"),
    Item(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        jpName: "shi / yon",
        enName: "four"),
    Item(
        sound: ("sounds/numbers/number_five_sound.mp3"),
        image: "assets/images/numbers/number_five.png",
        jpName: "go",
        enName: "five"),
    Item(
        sound: ("sounds/numbers/number_six_sound.mp3"),
        image: "assets/images/numbers/number_six.png",
        jpName: "roku",
        enName: "six"),
    Item(
        sound: ("sounds/numbers/number_seven_sound.mp3"),
        image: "assets/images/numbers/number_seven.png",
        jpName: " shichi / nana",
        enName: "seven"),
    Item(
        sound: ("sounds/numbers/number_eight_sound.mp3"),
        image: "assets/images/numbers/number_eight.png",
        jpName: " hachi",
        enName: "eight"),
    Item(
        sound: ("sounds/numbers/number_nine_sound.mp3"),
        image: "assets/images/numbers/number_nine.png",
        jpName: "kyuu / ku",
        enName: "nine"),
    Item(
        sound: ("sounds/numbers/number_ten_sound.mp3"),
        image: "assets/images/numbers/number_ten.png",
        jpName: " juu",
        enName: "ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3C2822),
          title: Text("numbers"),
        ),
        body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, num) {
            return ListItem(
              itemTYpe: 'numbers',
              item: number[num],
              color: Color.fromARGB(255, 31, 208, 105),
            );
          },
        ));
  }
}
