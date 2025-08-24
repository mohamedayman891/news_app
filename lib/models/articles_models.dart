class ArticlesModels {
  final String image;
  final String title;
  final String subtitle;
  ArticlesModels({
    required this.image,
    required this.title,
    required this.subtitle,
  });
  factory ArticlesModels.fromJson(json) {
    return ArticlesModels(
      image: json["urlToImage"],
      title: json["title"],
      subtitle: json["description"],
    );
  }
}
