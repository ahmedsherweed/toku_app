import 'package:flutter/material.dart';
import 'package:toku_app/Screens/family_members.dart';
import 'package:toku_app/Screens/number_screen.dart';

import '../component/categeries_item.dart';
import 'color_page.dart';
import 'phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDF2D8),
      appBar: AppBar(
        backgroundColor: Color(0xff3C2822),
        title: Text("TokuApp"),
      ),
      body: Column(
        children: [
          Category(
            text: ("Numbers"),
            color: Color.fromARGB(255, 31, 208, 105),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumberPage();
              }));
            },
          ),
          Category(
            text: ("Family Members"),
            color: Color.fromARGB(253, 142, 46, 169),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersPage();
              }));
            },
          ),
          Category(
            text: ("Colors"),
            color: Color(0xff2832858),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
          ),
          Category(
            text: ("Phrases"),
            color: Color(0xffE28948),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
