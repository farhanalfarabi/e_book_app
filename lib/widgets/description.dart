import 'package:e_book_app/theme/themes.dart';
import 'package:e_book_app/widgets/box_description.dart';
import 'package:e_book_app/widgets/btn_read.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map;

    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data["title"],
                      style: semibold20.copyWith(color: blackOri),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      data["writer"],
                      style: medium12.copyWith(color: grey),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Free Access",
                style: medium14.copyWith(color: green),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Description",
            style: semibold14.copyWith(color: blackOri),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.",
            style: regular12.copyWith(color: grey),
          ),
          const BoxDescription(),
          const ButtonRead(),
        ],
      ),
    );
  }
}
