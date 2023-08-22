import 'package:flutter/material.dart';
import 'package:toku_app/component/item.dart';

import '../models/number_models.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> FamilyMembers = const [
    Item(
        sound: "sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "daughter"),
    Item(
        sound: "sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png",
        jpName: "Chichioya",
        enName: "father"),
    Item(
        sound: "sounds/family_members/grand father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "Sofu",
        enName: "grand father"),
    Item(
        sound: "sounds/family_members/grand mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "grand mother"),
    Item(
        sound: ("sounds/family_members/mother.wav"),
        image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "mother"),
    Item(
        sound: ("sounds/family_members/older bother.wav"),
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "Ani",
        enName: "older_brother"),
    Item(
        sound: ("sounds/family_members/older sister.wav"),
        image: "assets/images/family_members/family_older_sister.png",
        jpName: " Ane",
        enName: "older_sister"),
    Item(
        sound: ("sounds/family_members/son.wav"),
        image: "assets/images/family_members/family_son.png",
        jpName: " Musuko",
        enName: "son"),
    Item(
        sound: ("sounds/family_members/younger brohter.wav"),
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Kyōdai",
        enName: "brother"),
    Item(
        sound: ("assets/sounds/family_members/younger sister.wav"),
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: " Imōto",
        enName: "sister"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3C2822),
          title: Text("Family members"),
        ),
        body: ListView.builder(
          itemCount: FamilyMembers.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: FamilyMembers[index],
              color: Color.fromARGB(253, 142, 46, 169),
              itemTYpe: 'family_members',
            );
          },
        ));
  }
}
