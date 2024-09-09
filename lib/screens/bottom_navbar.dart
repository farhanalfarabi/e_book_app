import 'package:e_book_app/screens/chart_page.dart';
import 'package:e_book_app/screens/home.dart';
import 'package:e_book_app/screens/profile_page.dart';
import 'package:e_book_app/screens/save_page.dart';
import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = "/";

  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  List<Widget> screens = [
    HomePage(),
    const SavePage(),
    const ChartPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget CustomBottomNav() {
      return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  "assets/icons/home_icons.png",
                  width: 20,
                  color: selectedIndex == 0 ? green : grey,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  "assets/icons/save_icon.png",
                  width: 14,
                  color: selectedIndex == 1 ? green : grey,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  "assets/icons/chart_icon.png",
                  width: 20,
                  color: selectedIndex == 2 ? green : grey,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  "assets/icons/person_icon.png",
                  width: 18,
                  color: selectedIndex == 3 ? green : grey,
                ),
              ),
              label: ""),
        ],
      );
    }

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
