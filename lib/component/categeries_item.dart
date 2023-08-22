import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 80,
        width: double.infinity,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            text!,
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
