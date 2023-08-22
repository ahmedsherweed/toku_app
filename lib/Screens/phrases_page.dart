import 'package:flutter/material.dart';
import 'package:toku_app/component/item.dart';
import 'package:toku_app/models/number_models.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> phrases = const [
    Item(
      sound: "assets/sounds/phrases/yes_im_coming.wav",
      jpName: "Hai, kimasu",
      enName: "yes_im_coming",
    ),
    Item(
      sound: "assets/sounds/phrases/where_are_you_going.wav",
      jpName: "Doko ni iku no",
      enName: "where_are_you_going",
    ),
    Item(
      sound: "assets/sounds/phrases/what_is_your_name.wav",
      jpName: "Anata no namae wa nandesuka",
      enName: "what_is_your_name",
    ),
    Item(
        sound: "assets/sounds/phrases/programming_is_easy.wav",
        jpName: "Puroguramingu wa kantandesu",
        enName: "programming_is_easy"),
    Item(
      sound: "assets/sounds/phrases/i_love_programming.wav",
      jpName: "Watashi wa puroguramingu ga daisukidesu",
      enName: "i_love_programming",
    ),
    Item(
      sound: ("assets/sounds/phrases/i_love_anime.wav"),
      jpName: "Watashi wa anime ga daisukidesu",
      enName: "i_love_anime",
    ),
    Item(
      sound: ("assets/sounds/phrases/how_are_you_feeling.wav"),
      jpName: "Go kibun wa ikagadesu ka",
      enName: "how_are_you_feeling",
    ),
    Item(
        sound: ("assets/sounds/phrases/dont_forget_to_subscribe.wav"),
        jpName: " Kōdoku o wasurenaide kudasai",
        enName: "dont_forget_to_subscribe"),
    Item(
      sound: ("assets/soundsphrases/are_you_coming.wav"),
      jpName: " Anata wa kite imasu",
      enName: "are_you_coming",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3C2822),
          title: Text("phrases"),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return ListItem(
              itemTYpe: 'phrase',
              item: phrases[index],
              color: Color(0xff2832858),
            );
          },
        ));
  }
}
