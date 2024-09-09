// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:e_book_app/theme/themes.dart';

class recentBook extends StatelessWidget {
  const recentBook({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: searchField,
          )),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90,
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: semibold14.copyWith(color: blackOri),
              ),
              CircularPercentIndicator(
                radius: 25,
                circularStrokeCap: CircularStrokeCap.round,
                lineWidth: 6,
                animation: true,
                percent: 0.5,
                progressColor: green,
                reverse: true,
              ),
              Text(
                "50% Completed",
                style: medium12.copyWith(color: grey2),
              )
            ],
          )
        ],
      ),
    );
  }
}
