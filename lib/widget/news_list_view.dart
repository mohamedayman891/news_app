import 'package:flutter/material.dart';
import 'package:flutterapp/models/articles_models.dart';
import 'package:flutterapp/widget/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});
  final List<ArticlesModels> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTile(articlesModels: articles[index]),
        );
      }),
    );
  }
}
