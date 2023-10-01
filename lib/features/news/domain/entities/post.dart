class Post {
  final int id;
  final String date;
  final String link;
  final String jetpackFeaturedMediaUrl;
  final Title title;
  final Content content;
  final Content excerpt;

  Post({
    required this.id,
    required this.date,
    required this.link,
    required this.jetpackFeaturedMediaUrl,
    required this.title,
    required this.content,
    required this.excerpt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        date: json["date"],
        link: json["link"],
        jetpackFeaturedMediaUrl: json["jetpack_featured_media_url"],
        title: Title.fromJson(json["title"]),
        content: Content.fromJson(json["content"]),
        excerpt: Content.fromJson(json["excerpt"]),
      );
}

class Title {
  final String rendered;

  Title({required this.rendered});

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        rendered: json["rendered"],
      );
}

class Content {
  final String rendered;

  Content({required this.rendered});

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        rendered: json["rendered"],
      );
}
