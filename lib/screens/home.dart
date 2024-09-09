import 'package:e_book_app/theme/themes.dart';
import 'package:e_book_app/widgets/category.dart';
import 'package:e_book_app/widgets/headers.dart';
import 'package:e_book_app/widgets/recent_book.dart';
import 'package:e_book_app/widgets/search_field.dart';
import 'package:e_book_app/widgets/trending_book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/HomePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderWidget(),
                const SizedBox(
                  height: 30,
                ),
                const SearchField(),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text("Recent Book", style: semibold16),
                ),
                const SizedBox(
                  height: 12,
                ),
                const RecentBookWidget(),
              ],
            ),
          ),
          CategoryWidget(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              "Trending Books",
              style: semibold16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const TrendingBookWidget(),
        ],
      ),
    );
  }
}
