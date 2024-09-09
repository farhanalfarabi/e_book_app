import 'package:e_book_app/components/recent_book_c.dart';
import 'package:flutter/material.dart';

class RecentBookWidget extends StatelessWidget {
  const RecentBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: const Row(
        children: [
          recentBook(
            image: "assets/images/recent_book.png",
            title: "The Magic",
          ),
          SizedBox(
            width: 20,
          ),
          recentBook(
            image: "assets/images/recent_book2.png",
            title: "The Martian",
          ),
          SizedBox(
            width: 20,
          ),
          recentBook(
            image: "assets/images/recent_book.png",
            title: "The Magic",
          ),
        ],
      ),
    );
  }
}
