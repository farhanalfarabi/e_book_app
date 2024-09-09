import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class ButtonRead extends StatelessWidget {
  const ButtonRead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: green,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Read Now",
            style: semibold20.copyWith(color: white),
          )),
    );
  }
}
