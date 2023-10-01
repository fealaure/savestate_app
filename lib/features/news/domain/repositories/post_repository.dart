import 'package:save_state/features/news/domain/entities/post.dart';

abstract class PostRepository {
  Future<List<Post>> fetchPosts();
}
