import 'package:flutter/material.dart';
import 'package:toku_app/component/item.dart';

import '../models/number_models.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
        sound: "assets/sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png",
        jpName: "Kuro",
        enName: "black"),
    Item(
        sound: "assets/sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "brown"),
    Item(
        sound: "sounds/colors/dusty yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "Hokori ppoi kiiro",
        enName: "dusty yellow"),
    Item(
        sound: "assets/sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png",
        jpName: "Gurē",
        enName: "gray"),
    Item(
        sound: ("assets/sounds/colors/green.wav"),
        image: "assets/images/colors/color_green.png",
        jpName: "Midori",
        enName: "green"),
    Item(
        sound: ("assets/sounds/colors/red.wav"),
        image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "red"),
    Item(
        sound: ("assets/sounds/colors/white.wav"),
        image: "assets/images/colors/color_white.png",
        jpName: " Shiro",
        enName: "white"),
    Item(
        sound: ("assets/sounds/colors/yellow.wav"),
        image: "assets/images/colors/yellow.png",
        jpName: " Kiiro",
        enName: "yellow"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3C2822),
          title: Text("colors"),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(
              itemTYpe: 'Colors',
              item: colors[index],
              color: Color(0xff2832858),
            );
          },
        ));
  }
}
