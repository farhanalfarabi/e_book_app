import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/foto.jpg"),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Farhan,",
                style: semibold16,
              ),
              Text(
                "good morning,",
                style: regular14.copyWith(color: grey),
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            "assets/icons/menu_icon.png",
            width: 18,
          ),
        ],
      ),
    );
  }
}
