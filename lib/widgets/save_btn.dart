import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 415,
      right: 30,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 17),
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: green, shape: BoxShape.circle),
        child: Image.asset("assets/icons/save_icon2.png"),
      ),
    );
  }
}
