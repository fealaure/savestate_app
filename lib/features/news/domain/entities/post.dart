import 'package:save_state/core/extensions/string_extensions.dart';

class Post {
  final int id;
  final String date;
  final String link;
  final String mediaUrl;
  final String title;
  final String content;
  final String excerpt;

  Post({
    required this.id,
    required this.date,
    required this.link,
    required this.mediaUrl,
    required this.title,
    required this.content,
    required this.excerpt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        date: json["date"],
        link: json["link"],
        mediaUrl: json["jetpack_featured_media_url"],
        title: (json['title']['rendered'] as String).cleanFromHtml(),
        content: (json['content']['rendered'] as String).cleanFromHtml(),
        excerpt: (json['excerpt']['rendered'] as String).cleanFromHtml(),
      );
}
