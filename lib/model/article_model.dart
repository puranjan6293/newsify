class NewsArticle {
  final String title;
  final String? description;
  final String? content;
  final String? imageUrl;

  NewsArticle({
    required this.title,
    this.description,
    this.content,
    this.imageUrl,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? '',
      description: json['description'],
      content: json['content'],
      imageUrl: json['urlToImage'],
    );
  }
}
