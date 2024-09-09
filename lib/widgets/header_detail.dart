import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 30, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
          Text(
            "Book Details",
            style: semibold14.copyWith(color: black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
