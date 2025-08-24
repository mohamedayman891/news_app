import 'package:flutter/material.dart';
import 'package:flutterapp/models/category_model.dart';
import 'package:flutterapp/widget/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: category.categoryName);
            },
          ),
        );
      },
      child: Container(
        height: 85,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
