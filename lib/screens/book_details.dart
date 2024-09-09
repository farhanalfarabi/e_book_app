import 'package:e_book_app/theme/themes.dart';
import 'package:e_book_app/widgets/book_detail_image.dart';
import 'package:e_book_app/widgets/description.dart';
import 'package:e_book_app/widgets/header_detail.dart';
import 'package:e_book_app/widgets/save_btn.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  static const routeName = "/BookDetail";
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        children: const [
          Stack(
            children: [
              Column(
                children: [
                  HeaderDetail(),
                  DetailImageBook(),
                  Description(),
                ],
              ),
              SaveButton(),
            ],
          )
        ],
      ),
    );
  }
}
