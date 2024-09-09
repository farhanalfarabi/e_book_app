import 'package:e_book_app/screens/book_details.dart';
import 'package:e_book_app/screens/bottom_navbar.dart';
import 'package:e_book_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        BottomNavBar.routeName: (context) => const BottomNavBar(),
        HomePage.routeName: (context) => const HomePage(),
        BookDetail.routeName: (context) => const BookDetail(),
      },
    );
  }
}
