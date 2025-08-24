import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/models/articles_models.dart';
import 'package:flutterapp/services/news_service.dart';
import 'package:flutterapp/widget/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModels>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(child: Text("opps was has an error"));
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
