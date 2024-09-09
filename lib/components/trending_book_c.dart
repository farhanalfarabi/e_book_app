// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_book_app/screens/book_details.dart';
import 'package:flutter/material.dart';

import 'package:e_book_app/theme/themes.dart';

class TrendingBookComponent extends StatelessWidget {
  final String image;
  final String title;
  final String writer;
  const TrendingBookComponent({
    Key? key,
    required this.image,
    required this.title,
    required this.writer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, BookDetail.routeName,
            arguments: {"image": image, "title": title, "writer": writer}),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: image,
              child: Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              writer,
              style: medium12.copyWith(color: grey),
            ),
            Text(
              title,
              style: semibold14.copyWith(color: black),
            ),
          ],
        ),
      ),
    );
  }
}
