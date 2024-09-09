import 'package:e_book_app/theme/themes.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Find Your Favorite Book",
            hintStyle: medium12.copyWith(color: grey),
            fillColor: background,
            filled: true,
            isCollapsed: true,
            contentPadding: EdgeInsets.all(18),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.search_rounded),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ));
  }
}
