import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int selectedCategory = 0;

  final List<String> _categories = [
    "All Books",
    "Business",
    "Self Help",
    "Cooking",
    "History",
    "Motivational",
    "Health",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 30),
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (context, index) {
            bool isSelected = index == selectedCategory;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 12),
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: isSelected ? green : transparant,
                ),
                child: Text(
                  _categories[index],
                  style: semibold14.copyWith(color: isSelected ? white : grey),
                ),
              ),
            );
          }),
    );
    ;
  }
}
