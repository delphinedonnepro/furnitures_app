import 'package:flutter/material.dart';
import 'package:furnitures_app/models/category.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key,
    required this.categories,
  });

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
              (index) => CategoryCard(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}