import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class BoxDescription extends StatelessWidget {
  const BoxDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      decoration: BoxDecoration(
          color: searchField, borderRadius: BorderRadius.circular(9)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Rating",
                style: medium10.copyWith(color: grey3),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "4.8",
                style: semibold12.copyWith(color: blackOri),
              ),
            ],
          ),
          VerticalDivider(
            color: grey3,
          ),
          Column(
            children: [
              Text(
                "Number of pages",
                style: medium10.copyWith(color: grey3),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "180 Page",
                style: semibold12.copyWith(color: blackOri),
              ),
            ],
          ),
          VerticalDivider(
            color: grey3,
          ),
          Column(
            children: [
              Text(
                "Language",
                style: medium10.copyWith(color: grey3),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "ENG",
                style: semibold12.copyWith(color: blackOri),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
