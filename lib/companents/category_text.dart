import 'package:ecommerce/constant/constant.dart';
import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  final String categoryTitle;
  const CategoryText({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          categoryTitle,
          style: TextStyle(
            color: Constant.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Text(
          "See All",
          style: TextStyle(
              color: Constant.gray,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}
