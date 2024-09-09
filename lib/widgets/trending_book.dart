import 'package:e_book_app/components/trending_book_C.dart';
import 'package:flutter/material.dart';

class TrendingBookWidget extends StatelessWidget {
  const TrendingBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.only(left: 30, bottom: 30),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TrendingBookComponent(
            image: "assets/images/trending_book.png",
            title: "Guy Kawasaki",
            writer: "Enchantment",
          ),
          TrendingBookComponent(
            image: "assets/images/trending_book2.png",
            title: "Lore",
            writer: "Aaron Mahnke",
          ),
          TrendingBookComponent(
            image: "assets/images/trending_book4.png",
            title: "Who Moved",
            writer: "Spencer Johnson",
          ),
          TrendingBookComponent(
            image: "assets/images/habits.jpeg",
            title: "Your Habits",
            writer: "Felix siaw",
          ),
          TrendingBookComponent(
            image: "assets/images/bumi.jpg",
            title: "Bumi",
            writer: "Tere Liye",
          ),
        ],
      ),
    );
  }
}
