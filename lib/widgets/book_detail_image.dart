import 'package:flutter/material.dart';

class DetailImageBook extends StatelessWidget {
  const DetailImageBook({super.key});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map;
    return Hero(
      tag: data["image"],
      child: Container(
        width: 175,
        height: 267,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(data["image"]),
          ),
        ),
      ),
    );
  }
}
