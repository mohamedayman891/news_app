import 'package:flutter/material.dart';
import 'package:flutterapp/models/articles_models.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModels});
  final ArticlesModels articlesModels;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articlesModels.image,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 12),
        Text(
          articlesModels.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Text(
          articlesModels.subtitle,
          maxLines: 2,

          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
