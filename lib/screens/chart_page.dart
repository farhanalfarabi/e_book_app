import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Chart Page",
          style: semibold20,
        ),
      ),
    );
  }
}
